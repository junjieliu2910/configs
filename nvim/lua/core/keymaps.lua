vim.g.mapleader = ","

local keymap = vim.keymap

-- Escape
keymap.set("i", "jk", "<ESC>")

-- Windows split
keymap.set("n", "<leader>sv", "<C-w>v")
keymap.set("n", "<leader>sh", "<C-w>s")


-- no hightlight
keymap.set("n", ",<CR>", ":noh<CR>")


-- toggle nvim tree
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")


-- Jump between tabs
keymap.set("n", "<space>l", ":bnext<CR>")
keymap.set("n", "<space>h", ":bprevious<CR>")

