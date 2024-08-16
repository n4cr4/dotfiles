return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        ["<C-Space>"] = nil,
        ["<C-r>"] = cmp.mapping.complete(), -- reload completion
        ["<C-a>"] = cmp.mapping.abort(), -- abort
      })
    end,
  },
}
