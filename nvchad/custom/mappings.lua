local M = {}

-- In order to disable a default keymap, use
-- M.disabled = {
--   n = {
--       ["<leader>h"] = "",
--       ["<C-a>"] = ""
--   }
-- }


-- Your custom mappings
M.general = {
  n = {
     ["<leader>ss"] = {"<cmd> split <CR>", "split window"},
     ["<leader>sv"] = {"<cmd> vsplit <CR>", "split window"},
        ["<leader>fm"] = {
      function()
        require("conform").format()

      end,
      "formatting",
    }

  },
}

return M

