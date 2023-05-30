-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- This is where you actually apply your config choices
config.color_scheme = "Catppuccin Mocha"

config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

config.window_frame = {
	font = wezterm.font({ family = "JetBrains Mono", weight = "Regular" }),
	font_size = 11.0,
}

config.colors = {
	tab_bar = {
		active_tab = {
			bg_color = "#1e1e2e",
			fg_color = "#cdd6f4",
		},
	},
}

-- and finally, return the configuration to wezterm
return config
