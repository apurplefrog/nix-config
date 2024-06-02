return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        pyright,
        rust_analyzer,
        lua_ls,
      }
    },
  },
  {
    "neovim/nvim-lspconfig",
    on_attach = function() end,
    config = function()
      local lspconfig = require("lspconfig")
      local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()
      lspconfig.pyright.setup({
        capabilities = lsp_capabilities,
      })      
      lspconfig.lua_ls.setup({
        capabilities = capabilities,
        on_attach = on_attach,
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
          },
        },
      })

      lspconfig.rust_analyzer.setup({
        capabilites = lsp_capabilities,
      })
    end,
  },
}
