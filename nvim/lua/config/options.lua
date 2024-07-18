-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.g.autoformat = false
vim.g.lazyvim_python_lsp = "pyright"

local opt = vim.opt

opt.spelllang = "en,cjk"
