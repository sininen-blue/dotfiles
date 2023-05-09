local awful = require("awful")
local wibox = require("wibox")
local watch = require("awful.widget.watch")
local spawn = require("awful.spawn")
local gfs = require("gears.filesystem")
local naughty = require("naughty")
local beautiful = require("beautiful")

local font = beautiful.font
local step = 5

local get_volume_cmd = 'pactl get-sink-volume $(pactl get-default-sink) | awk "{print substr($5, 1, length($5)-1)}"'
local set_volume_cmd = 'pactl set-sink-volume $(pactl get-default-sink)'
local inc_volume_cmd = 'pactl set-sink-volume $(pactl get-default-sink) +' .. step .. '%'
local dec_volume_cmd = 'pactl set-sink-volume $(pactl get-default-sink) -' .. step .. '%'

local current_volume = 0 

-- up down mute

volume_widget = wibox.widget {
  {
    text = "",
    font = "Font Awesome 6 Free Solid 9",
    widget = wibox.widget.textbox,
  },
  {
    text = current_volume, -- might need to convert to string
    font = font,
    widget = wibox.widget.textbox,
  }
  spacing = 4,
  layout = wibox.layout.fixed.horizontal,
}



    -- set_value = function(self, level)
    --   local display_level = level
    --   self:get_children_by_id('txt')[1]:set_text(display_level)
    -- end
  -- }
--
--   local update_widget = function(widget, stdout, _, _, _)
--     local volume_level = tonumber(string.format("%.0f", stdout))
--     current_level = volume_level
--     widget:set_value(volume_level)
--   end
--
--   function volume_widget:set(value)
--     current_level = value
--     spawn.easy_async(string.format(set_volume_cmd, value .. "%"), function()
--       spawn.easy_async(get_volume_cmd, function(out)
--         update_widget(volume_widget.widget, out)
--       end)
--     end)
--   end
--
--    function volume_widget:inc()
--     spawn.easy_async(inc_volume_cmd, function()
--       spawn.easy_async(get_volume_cmd, function(out)
--         update_widget(volume_widget.widget, out)
--       end)
--     end)
--   end
--
--   function volume_widget:dec()
--     spawn.easy_async(dec_volume_cmd, function()
--       spawn.easy_async(get_volume_cmd, function(out)
--         update_widget(volume_widget.widget, out)
--       end)
--     end)
--   end
--
--   watch(get_volume_cmd, timeout, update_widget, volume_widget.widget)
--
--   return volume_widget.widget
-- end
--
-- return setmetatable(volume_widget, {
--   __call = function(_, ...)
--     return worker(...)
--   end,
-- })
