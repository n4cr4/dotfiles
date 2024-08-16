local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Increment/decrement
keymap.set("n", "-", "<C-x>")
keymap.set("n", "+", "<C-a>")

-- Jumplist
keymap.set("n", "<C-m>", "<C-i>", opts)

-- Remap general key
keymap.set("n", "j", "gjzz")
keymap.set("n", "k", "gkzz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")



