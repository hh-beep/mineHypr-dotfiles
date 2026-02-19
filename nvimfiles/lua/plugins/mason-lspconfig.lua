return {
    "mason-org/mason-lspconfig.nvim",
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
          "clangd"
    }
  }
}
