return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-Space>"] = nil,
        ["<C-e>"] = cmp.mapping.complete(),
        ["<C-q>"] = cmp.mapping.abort(),
      })
    end,
  },
}
