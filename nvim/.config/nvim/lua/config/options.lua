-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
-- 智能切换：SSH 环境用 OSC52，本地 WSL 也兼容
if vim.env.SSH_TTY ~= nil then
  -- SSH 时强制 OSC52（Neovim 有时不能自动检测）
  vim.g.clipboard = {
    name = "OSC 52",
    copy = {
      ["+"] = require("vim.ui.clipboard.osc52").copy("+"),
      ["*"] = require("vim.ui.clipboard.osc52").copy("*"),
    },
    paste = {
      ["+"] = require("vim.ui.clipboard.osc52").paste("+"),
      ["*"] = require("vim.ui.clipboard.osc52").paste("*"),
    },
  }
else
  -- 本地 WSL 环境：让 Neovim 自动发现 clip.exe / OSC52
  vim.opt.clipboard = "unnamedplus"
end
