local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

local LazyConf = {
	spec = {
		{ "LazyVim/LazyVim", import = "lazyvim.plugins" },
		-- extras coding
		{ import = "lazyvim.plugins.extras.coding.mini-surround" },
		-- extras editor
		{ import = "lazyvim.plugins.extras.editor.harpoon2" },
		-- extras lang
		{ import = "lazyvim.plugins.extras.lang.json" },
		{ import = "lazyvim.plugins.extras.lang.python" },
		{ import = "lazyvim.plugins.extras.lang.clangd" },
		{ import = "lazyvim.plugins.extras.lang.docker" },
		{ import = "lazyvim.plugins.extras.lang.tex" },
		-- extras formatter
		{ import = "lazyvim.plugins.extras.formatting.prettier" },
		-- own conf
		{ import = "plugins" },
	},
	defaults = {
		lazy = false,
		version = false,
	},
	install = { colorscheme = { "tokyonight", "habamax" } },
	checker = { enabled = true, notify = false },
	performance = {
		rtp = {
			disabled_plugins = {
				"gzip",
				"netrwPlugin",
				"tarPlugin",
				"tohtml",
				"tutor",
				"zipPlugin",
			},
		},
	},
	rocks = {
		enabled = false,
	},
}

require("lazy").setup(LazyConf)
