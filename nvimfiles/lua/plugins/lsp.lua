return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "mfussenegger/nvim-jdtls",       -- Helper para Java
    "hrsh7th/cmp-nvim-lsp",          -- Capabilities para CMP
    "j-hui/fidget.nvim",             -- Loading UI
  },
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
    
    -- ✅ TypeScript/JavaScript (React, TS, JS)
    lspconfig.ts_ls.setup({
      capabilities = capabilities,
      filetypes = { "typescript", "typescriptreact", "javascript", "javascriptreact" },
    })
    
    -- ✅ Lua (corrigido: lua_ls, não luals)
    lspconfig.lua_ls.setup({
      capabilities = capabilities,
      settings = {
        Lua = {
          runtime = { version = "LuaJIT" },
          diagnostics = { globals = { "vim" } },
          workspace = { checkThirdParty = false },
          completion = { callSnippet = "Replace" },
        }
      }
    })
    
    -- ✅ Docker
    lspconfig.dockerls.setup({ capabilities = capabilities })
    lspconfig.docker_compose_language_service.setup({ capabilities = capabilities })
    
    
    lspconfig.jdtls.setup({
      capabilities = capabilities,
      init_options = {
        bundles = {},
      },
      settings = {
        java = {
          signatureHelp = { enabled = true },
          contentProvider = { preferred = "fernflower" },
          completion = {
            favoriteStaticMembers = {
              "org.junit.jupiter.api.Assertions.*",
              "org.hamcrest.MatcherAssert.assertThat",
            },
          },
          sources = { organizeImports = { starThreshold = 9999 } },
        },
      },
    })

  end,
}