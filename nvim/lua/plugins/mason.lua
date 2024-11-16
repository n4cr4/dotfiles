return {
	{
		"williamboman/mason.nvim",
		opts = function(_, opts)
			vim.list_extend(opts.ensure_installed, {
				"clang-format",
				"mdformat",
			})
		end,
	},
}
