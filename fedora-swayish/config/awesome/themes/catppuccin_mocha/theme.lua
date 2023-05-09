----------------------------------------
--  "Catppuccin-Mocah" awesome theme  --
--    By Sininenblue                  --
----------------------------------------

local themes_path = require("gears.filesystem").get_dir("config") .. "/themes/"
local dpi = require("beautiful.xresources").apply_dpi

-- {{{ Main
local theme = {}
theme.wallpaper = themes_path .. "catppuccin_mocha/catppuccin_background-mocha.png"
theme.icon_theme = "Papirus-Dark"
-- }}}

-- {{{ Styles
theme.font      = "FantasqueSansMono Nerd Font 10"

-- {{{ Colors
theme.fg_normal  = "#a6adc8"
theme.fg_focus   = "#cdd6f4"
theme.fg_urgent  = "#f38ba8"

theme.bg_normal  = "#1e1e2e"
theme.bg_focus   = "#181825"
theme.bg_urgent  = "#1e1e2e"
theme.bg_systray = theme.bg_normal
-- }}}

-- {{{ Borders
theme.useless_gap   = dpi(0)
theme.border_width  = dpi(1)
theme.border_normal = "#1e1e2e"
theme.border_focus  = "#cba6f7"
theme.border_marked = "#f38ba8"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = "#1e1e2e"
theme.titlebar_bg_normal = "#1e1e2e"
-- }}}


-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#1e1e2e"
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = "#f38ba8"
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = dpi(15)
theme.menu_width  = dpi(100)
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = themes_path .. "catppuccin_mocha/taglist/squarefz.png"
theme.taglist_squares_unsel = themes_path .. "catppuccin_mocha/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
theme.awesome_icon           = themes_path .. "catppuccin_mocha/awesome-icon.png"
theme.menu_submenu_icon      = themes_path .. "default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = themes_path .. "catppuccin_mocha/layouts/tile.png"
theme.layout_tileleft   = themes_path .. "catppuccin_mocha/layouts/tileleft.png"
theme.layout_tilebottom = themes_path .. "catppuccin_mocha/layouts/tilebottom.png"
theme.layout_tiletop    = themes_path .. "catppuccin_mocha/layouts/tiletop.png"
theme.layout_fairv      = themes_path .. "catppuccin_mocha/layouts/fairv.png"
theme.layout_fairh      = themes_path .. "catppuccin_mocha/layouts/fairh.png"
theme.layout_spiral     = themes_path .. "catppuccin_mocha/layouts/spiral.png"
theme.layout_dwindle    = themes_path .. "catppuccin_mocha/layouts/dwindle.png"
theme.layout_max        = themes_path .. "catppuccin_mocha/layouts/max.png"
theme.layout_fullscreen = themes_path .. "catppuccin_mocha/layouts/fullscreen.png"
theme.layout_magnifier  = themes_path .. "catppuccin_mocha/layouts/magnifier.png"
theme.layout_floating   = themes_path .. "catppuccin_mocha/layouts/floating.png"
theme.layout_cornernw   = themes_path .. "catppuccin_mocha/layouts/cornernw.png"
theme.layout_cornerne   = themes_path .. "catppuccin_mocha/layouts/cornerne.png"
theme.layout_cornersw   = themes_path .. "catppuccin_mocha/layouts/cornersw.png"
theme.layout_cornerse   = themes_path .. "catppuccin_mocha/layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = themes_path .. "catppuccin_mocha/titlebar/close_focus.png"
theme.titlebar_close_button_normal = themes_path .. "catppuccin_mocha/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = themes_path .. "default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = themes_path .. "default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active  = themes_path .. "catppuccin_mocha/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "catppuccin_mocha/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = themes_path .. "catppuccin_mocha/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = themes_path .. "catppuccin_mocha/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = themes_path .. "catppuccin_mocha/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "catppuccin_mocha/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = themes_path .. "catppuccin_mocha/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = themes_path .. "catppuccin_mocha/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = themes_path .. "catppuccin_mocha/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = themes_path .. "catppuccin_mocha/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = themes_path .. "catppuccin_mocha/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = themes_path .. "catppuccin_mocha/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = themes_path .. "catppuccin_mocha/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "catppuccin_mocha/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = themes_path .. "catppuccin_mocha/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = themes_path .. "catppuccin_mocha/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
