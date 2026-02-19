return {
  "ibhagwan/fzf-lua",
  opts = function(_, opts)
    local config = require("fzf-lua.config")

    -- Remova o mapeamento padrão do Ctrl-f
    config.defaults.keymap.builtin["<c-f>"] = nil
    config.defaults.keymap.fzf["<c-f>"] = nil

    -- Agora mapeie Ctrl-f para abrir o seletor de arquivos
    return {
      files = {
        keymap = {
          builtin = {
            ["<c-f>"] = "files",
          },
        },
      },
    }
  end,
}