return {
  "ray-x/lsp_signature.nvim",
  event = "LspAttach",
  opts = {
    bind = true,        -- Ativa automaticamente no LspAttach
    handler_opts = {
      border = "rounded",
      double = true,    -- Mostra tipo + documentação
    },
    hint_enable = true, -- Mostra dica de tipo
    hi_parameter = "LspSignatureActiveParameter", -- Destaque no parâmetro atual
    max_height = 12,    -- Altura máxima do popup
    max_width = 80,     -- Largura máxima
  },
}