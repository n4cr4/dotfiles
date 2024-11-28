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
		-- keys = {
		-- 	{
		-- 		"<leader>fe",
		-- 		function()
		-- 			require("neo-tree.command").execute({
		-- 				toggle = true,
		-- 				dir = vim.uv.cwd(),
		-- 				position = "float",
		-- 			})
		-- 		end,
		-- 	},
		-- 	{
		-- 		"<leader>fE",
		-- 		function()
		-- 			require("neo-tree.command").execute({
		-- 				toggle = true,
		-- 				dir = LazyVim.root(),
		-- 				position = "float",
		-- 			})
		-- 		end,
		-- 	},
		-- 	{ "<leader>e", "<leader>fe", desc = "Explorer NeoTree (cwd)", remap = true },
		-- 	{ "<leader>E", "<leader>fE", desc = "Explorer NeoTree (Root Dir)", remap = true },
		-- },
		opts = {
			filesystem = {
				always_show = {
					".gitignore",
					".env",
				},
			},
		},
	},
}
