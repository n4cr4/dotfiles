return {
	{
		"rcarriga/nvim-notify",
		opts = {
			timeout = 15000,
			top_down = false,
		},
	},
	{
		"nvim-lualine/lualine.nvim",
		opts = {
			options = {
				section_separators = { left = "", right = "" },
				component_separators = "",
			},
		},
	},
}
