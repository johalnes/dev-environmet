-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices

-- my coolnight colorscheme

config.color_scheme = 'Catppuccin Mocha'

config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19

config.enable_tab_bar = false

-- Spawn a fish shell in login mode
--config.default_prog = { '/opt/homebrew/bin/fish', '-l' }

config.window_decorations = "RESIZE"
config.window_background_opacity = 0.75
config.macos_window_background_blur = 10

-- and finally, return the configuration to wezterm
return config
