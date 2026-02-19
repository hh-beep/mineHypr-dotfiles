return {
  "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
  config = function()
    require("lsp_lines").setup()
    vim.diagnostic.config({
      virtual_lines = true, -- Ativa as linhas virtuais
      virtual_text = false, -- Desativa o texto ao lado (opcional)
    })
  end,
}