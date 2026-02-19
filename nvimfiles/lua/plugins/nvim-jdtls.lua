return {
  "mfussenegger/nvim-jdtls",
  dependencies = { "neovim/nvim-lspconfig" },
  -- ⚠️ NÃO use config aqui! Deixe a configuração no lsp.lua para evitar conflitos
  -- A config avançada fica comentada para usar depois:
  --[[
  config = function()
    local jdtls = require("jdtls")
    
    -- Detecta workspace automaticamente
    local root_markers = { ".git", "mvnw", "gradlew", "pom.xml", "build.gradle" }
    local root_dir = require("jdtls.setup").find_root(root_markers)
    local workspace_dir = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
    
    jdtls.setup({
      cmd = { "jdtls" },
      root_dir = root_dir,
      settings = {
        java = {
          signatureHelp = { enabled = true },
          contentProvider = { preferred = "fernflower" },
          completion = {
            favoriteStaticMembers = {
              "org.hamcrest.MatcherAssert.assertThat",
              "org.junit.jupiter.api.Assertions.*",
            },
          },
          sources = { organizeImports = { starThreshold = 9999 } },
          configuration = { runtimes = {} },
        },
      },
      init_options = { bundles = {} },
    })
  end,
  --]]
}