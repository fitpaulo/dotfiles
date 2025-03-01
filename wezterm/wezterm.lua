-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.hide_tab_bar_if_only_one_tab = true
config.font = wezterm.font{
  family = "FiraCodeNerdFont",
  harfbuzz_features = {'calt=1', "clig=1", "liga=1"},
}
config.window_frame = {
  font = wezterm.font {family = "FiraCodeNerdFont", weight = "Bold"},
  font_size = 12.0,
}

-- For example, changing the color scheme:
config.color_scheme = 'Dracula'

-- Transparency
config.window_background_opacity = 0.8

-- and finally, return the configuration to wezterm
return config
