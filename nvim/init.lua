require("plugins.plugins-setup")
require("core.options")
require("core.keymaps")

-- plugin config
require("plugins/lualine")
require("plugins/nvimtree")
require("plugins/treesitter")
require("plugins/lsp")
require("plugins/bufferline")
require("plugins/cmp")
require("plugins/telescope")
require("plugins.dap")
require("plugins/dap-ui")
require("plugins.terminal")


-- plugin without customized config 
require("leap").add_default_mappings()
