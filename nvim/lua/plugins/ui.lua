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
	{
		"nvim-neo-tree/neo-tree.nvim",
		keys = {
			{ "<leader>E", "<leader>fe", desc = "Explorer NeoTree (Root Dir)", remap = true },
			{ "<leader>e", "<leader>fE", desc = "Explorer NeoTree (cwd)", remap = true },
		},
		opts = {
			window = {
				position = "float",
			},
			filesystem = {
				always_show = {
					".gitignore",
					".env",
				},
			},
		},
	},
}
