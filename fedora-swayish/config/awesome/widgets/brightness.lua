local awful = require("awful")
local wibox = require("wibox")
local watch = require("awful.widget.watch")
local spawn = require("awful.spawn")
local gfs = require("gears.filesystem")
local naughty = require("naughty")
local beautiful = require("beautiful")

local brightness_widget = {}

local get_brightness_cmd
local set_brightness_cmd
local inc_brightness_cmd
local dec_brightness_cmd

local function worker(user_args)
	local args = user_args or {}

    local font = args.font or beautiful.font
    local timeout = args.timeout or 100

    local step = args.step or .2
    local base = args.base or 20

    local current_level = 0 -- current brightness value
    local tooltip = args.tooltip or false
    
    get_brightness_cmd = 'light -G'
    set_brightness_cmd = 'light -S %d' -- <level>
    inc_brightness_cmd = 'light -T ' .. 1 + step
    dec_brightness_cmd = 'light -T ' .. 1 - step

    brightness_widget.widget = wibox.widget {
        {
            text = "",
            font = "Font Awesome 6 Free Solid 9",
            widget = wibox.widget.textbox
        },
        {
            id = 'txt',
            font = font,
            widget = wibox.widget.textbox
        },
        spacing = 4,
        layout = wibox.layout.fixed.horizontal,

        set_value = function(self, level)
        
        local display_level = level
        self:get_children_by_id('txt')[1]:set_text(display_level)
    end
    }

    local update_widget = function(widget, stdout, _, _, _)
        local brightness_level = tonumber(string.format("%.0f", stdout))
        current_level = brightness_level
        widget:set_value(brightness_level)
    end

    function brightness_widget:set(value)
        current_level = value
        spawn.easy_async(string.format(set_brightness_cmd, value), function()
            spawn.easy_async(get_brightness_cmd, function(out)
                update_widget(brightness_widget.widget, out)
            end)
        end)
    end

    function brightness_widget:inc()
        spawn.easy_async(inc_brightness_cmd, function()
            spawn.easy_async(get_brightness_cmd, function(out)
                update_widget(brightness_widget.widget, out)
            end)
        end)
    end
    function brightness_widget:dec()
        spawn.easy_async(dec_brightness_cmd, function()
            spawn.easy_async(get_brightness_cmd, function(out)
                update_widget(brightness_widget.widget, out)
            end)
        end)
    end

    brightness_widget.widget:buttons(
            awful.util.table.join(
                    awful.button({}, 1, function() brightness_widget:set(base) end),
                    awful.button({}, 4, function() brightness_widget:inc() end),
                    awful.button({}, 5, function() brightness_widget:dec() end)
            )
    )

    watch(get_brightness_cmd, timeout, update_widget, brightness_widget.widget)

    if tooltip then
        awful.tooltip {
            objects        = { brightness_widget.widget },
            timer_function = function()
                return current_level .. " %"
            end,
        }
    end

    return brightness_widget.widget
end

return setmetatable(brightness_widget, {
	__call = function(_, ...)
		return worker(...)
	end,
})
