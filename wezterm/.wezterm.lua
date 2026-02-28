local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.default_domain = "WSL:Ubuntu-22.04" -- 设置默认域为 WSL 的 Ubuntu 22.04

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- 如果你想要磨砂玻璃效果（Mica/Acrylic），这里通常建议用默认渲染器或 OpenGL
	config.front_end = "WepGpu"
end
config.max_fps = 120
-- 开启 Kitty 协议
config.enable_kitty_graphics = true
config.term = "xterm-256color"
-- 开启高级按键编码 (支持区分 Ctrl+i / Tab 等)
config.enable_csi_u_key_encoding = true
-- Unicode 版本 (配合 Yazi 防止图标错位)
config.unicode_version = 14

--- 窗口尺寸配置 ---
config.initial_cols = 162
config.initial_rows = 40

-- 外观
config.color_scheme = "Tokyo Night Storm"
-- 字体配置
config.font = wezterm.font_with_fallback({
	{ family = "Maple Mono NF CN", weight = "Regular" },
	{ family = "Symbols Nerd Font Mono" },
})
config.font_size = 12.0

-- 窗口布局
config.window_background_opacity = 0.95
config.window_padding = { left = 0, right = 0, top = 0, bottom = 0 }
config.window_decorations = "RESIZE"
config.default_cursor_style = "BlinkingBar"
config.adjust_window_size_when_changing_font_size = false

config.keys = {
	-- 仅保留系统级剪贴板操作
	{ key = "C", mods = "CTRL|SHIFT", action = act.CopyTo("Clipboard") },
	{ key = "V", mods = "CTRL|SHIFT", action = act.PasteFrom("Clipboard") },
}

return config
