require("toggleterm").setup{
    size = 20,
    open_mapping = [[<leader>tm]],
    direction = "float",
    float_opts = {
        border = "curved",
        winblend = 0,
        highlights = {
            border = "Normal",
            background = "Normal",
        },
    },
    close_on_exit = true,
    shell = vim.o.shell,
}
