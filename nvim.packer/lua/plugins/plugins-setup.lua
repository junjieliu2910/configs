local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use ("wbthomason/packer.nvim")
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }

    -- File tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }

    -- Window management
    use("christoomey/vim-tmux-navigator")

    -- Terminal
    use {"akinsho/toggleterm.nvim", tag = '*'}

    -- Session management
    use {"Shatur/neovim-session-manager"}

    -- Color scheme
    use("Mofiqul/vscode.nvim")
    use("nvim-treesitter/nvim-treesitter")
    -- use("p00f/nvim-ts-rainbow")

    -- Lsp management
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig"
    }

    -- Dap 
    use("mfussenegger/nvim-dap")
    use{
        "rcarriga/nvim-dap-ui",
        requires = {"mfussenegger/nvim-dap"}
    }

    -- Buffer line
    use {"akinsho/bufferline.nvim", tart = "v1.2.0", requires = "nvim-tree/nvim-web-devicons"}

    -- Autocompletion
    use("hrsh7th/nvim-cmp")
    use("hrsh7th/cmp-path")
    use("hrsh7th/cmp-buffer")
    use("hrsh7th/cmp-cmdline")
    use("hrsh7th/cmp-nvim-lsp")
    use("hrsh7th/cmp-nvim-lua")

    -- Snippets Engine
    use("L3MON4D3/LuaSnip")

    -- File search
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        requires = {{
            'nvim-lua/plenary.nvim',
            'BurntSushi/ripgrep',
        }}
    }

    -- Cursor movement
    use("ggandor/leap.nvim")

    -- AutoPairs 
    use("windwp/nvim-autopairs")

    -- Comments 
    use {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    }


    if packer_bootstrap then
        require('packer').sync()
    end
end)
