return {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
				  "cssls",
          "html",
          "ts_ls",
          "eslint",
          "lua_ls",
			    "pyright",
          "jdtls",


          -- Se der erro: 
          "clangd",
          "sqls",
          -- Linters/Formatters
          "eslint_d",
          "prettier",
          "stylua",
          "hadolint",
      }
    }
}
