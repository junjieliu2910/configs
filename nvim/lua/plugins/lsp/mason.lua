return {
  -- nvim lsp default plugin
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "mason.nvim",
      "williamboman/mason-lspconfig.nvim",
      { "hrsh7th/cmp-nvim-lsp" },
    },
    keys = {
      { "gd", "<cmd>Telescope lsp_definitions<cr>", desc = "Show lsp definitions" },
      { "gr", "<cmd>Telescope lsp_references<cr>", desc = "Show lsp references"},
      { "gD", vim.lsp.buf.declaration, desc = "Show lsp declaration"},
      { "gi", "<cmd>Telescope lsp_implementations<cr>", desc = "Show lsp implementations"},
      { "gy", "<cmd>Telescope lsp_type_definitions<cr>", desc = "Show type information"},
      { "<leader>se", vim.lsp.buf.code_action, desc = "Show errors / code actions"},
      { "<leader>sd", vim.lsp.buf.hover, desc = "Show help doc" }
    },

    config = function()
      local lspconfig = require("lspconfig")
      local cmp_nvim_lsp = require("cmp_nvim_lsp")
      local capabilities = cmp_nvim_lsp.default_capabilities()

      lspconfig['clangd'].setup({
        capabilities = capabilities,
      })
      
      lspconfig['pyright'].setup({
        capabilities = capabilities,
      })
    end,
  },

  -- Mason
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim"
    },
    config = function()
      local mason = require("mason")
      local mason_lspconfig = require("mason-lspconfig")
      mason.setup({
        ui = {
          icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
          }
        }
      })
      mason_lspconfig.setup({
        ensure_installed = {
          "lua_ls",
          "bashls",
          "pyright",
          "clangd",
        },
        automatic_installation = true,
      })
    end,
  },
}
