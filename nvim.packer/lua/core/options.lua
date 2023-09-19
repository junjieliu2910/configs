local opt = vim.opt
local api = vim.api

opt.relativenumber = true
opt.number = true

opt.tabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.autoindent = true

opt.wrap = false
opt.cursorline = true

opt.mouse:append("a")

opt.splitright = true
opt.splitbelow = true

opt.ignorecase = true
opt.smartcase = true

opt.clipboard = 'unnamedplus'


opt.termguicolors = true
opt.signcolumn = "yes"
vim.cmd[[colorscheme vscode]]


