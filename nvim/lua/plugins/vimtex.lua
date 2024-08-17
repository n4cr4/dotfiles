return {
	"lervag/vimtex",
	config = function()
		vim.g.vimtex_mappings_disable = { ["n"] = { "K" } } -- disable `K` as it conflicts with LSP hover
    vim.g.vimtex_view_method = "sioyek"
    vim.g.vimtex_view_sioyek_exe = "sioyek.exe"
    vim.g.vimtex_callback_progpath = "~/.local/share/mise/installs/neovim/latest/bin/nvim"
	end,
}
