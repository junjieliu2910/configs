vim.g.mapleader = ","

local keymap = vim.keymap

-- Escape
keymap.set("i", ",,", "<ESC>")

-- Windows split
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")


-- no hightlight
keymap.set("n", ",<CR>", ":noh<CR")


-- toggle nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


