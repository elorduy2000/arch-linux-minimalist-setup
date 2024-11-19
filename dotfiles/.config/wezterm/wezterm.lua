local wezterm = require("wezterm")

local config = {
--	color_scheme = "Catppuccin Mocha",
	font = wezterm.font_with_fallback({ "Fira Code", "JetBrainsMono NF" }),
	font_size = 16,
	line_height = 1.1,
	window_background_opacity = 0.85,
	win32_system_backdrop = "Acrylic",
	window_padding = {
		top = "10px",
		left = "10px",
	},
	min_scroll_bar_height = "0.5cell",
	scrollback_lines = 50000,
	enable_tab_bar = false,
}

config.default_prog = { "bash"  }

return config
