local wezterm = require("wezterm")
local act = wezterm.action
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- 1. Windows 兼容性与渲染优化
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
	-- 如果你想要磨砂玻璃效果（Mica/Acrylic），这里通常建议用默认渲染器或 OpenGL
	config.front_end = "OpenGL"
end

config.default_domain = "WSL:Ubuntu-22.04" -- 设置默认域为 WSL 的 Ubuntu 22.04

-- --- 窗口尺寸配置 ---
config.initial_cols = 162
config.initial_rows = 40
-- 窗口内边距设置
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- 2. 外观与【半透明】设置
config.color_scheme = "Tokyo Night Storm"
config.font = wezterm.font("Maple Mono NF CN")
config.font_size = 12.0

-- 透明度设置：0.0 完全透明，1.0 完全不透明
config.window_background_opacity = 0.95

config.window_decorations = "RESIZE"
config.default_cursor_style = "BlinkingBar"

config.default_prog = { "pwsh.exe" } -- 设置默认 shell 为 PowerShell

config.adjust_window_size_when_changing_font_size = false

config.leader = { key = "w", mods = "CTRL", timeout_milliseconds = 1000 }

config.keys = {
	-- Ctrl + w, c -> 新建标签页
	{ key = "c", mods = "LEADER", action = wezterm.action.SpawnTab("CurrentPaneDomain") },

	-- Ctrl + w, x -> 关闭当前标签页
	{ key = "x", mods = "LEADER", action = wezterm.action.CloseCurrentPane({ confirm = true }) },

	-- Ctrl + w, 1/2/3 -> 切换标签页
	{ key = "1", mods = "LEADER", action = wezterm.action.ActivateTab(0) },
	{ key = "2", mods = "LEADER", action = wezterm.action.ActivateTab(1) },
	{ key = "3", mods = "LEADER", action = wezterm.action.ActivateTab(2) },

	-- Ctrl + w, " -> 垂直分屏 (上下)
	{ key = '"', mods = "LEADER|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },

	-- Ctrl + w, % -> 水平分屏 (左右)
	{ key = "%", mods = "LEADER|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },

	-- Ctrl + w, z -> 最大化/恢复当前分屏 (Zoom)
	{ key = "z", mods = "LEADER", action = wezterm.action.TogglePaneZoomState },

	-- Ctrl + Shift + C -> 复制选中内容到系统剪贴板
	{ key = "C", mods = "CTRL|SHIFT", action = act.CopyTo("Clipboard") },

	-- Ctrl + Shift + V -> 从系统剪贴板粘贴
	{ key = "V", mods = "CTRL|SHIFT", action = act.PasteFrom("Clipboard") },
}

return config
