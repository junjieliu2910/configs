return {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  dependencies = { 'nvim-lua/plenary.nvim' },
  keys = {
    { "<leader>ff", "<cmd>Telescope find_files<cr>", desc="find in files" },
    { "<leader>fb", "<cmd>Telescope buffers<cr>", desc="find in buffers" },
    { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc="grep in project" },
    { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc="search in help" },
  },
}
