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


-- Telescope 
keymap.set("n", "<leader>ff", require("telescope.builtin").find_files, {})
keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, {})
keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, {})
keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, {})
