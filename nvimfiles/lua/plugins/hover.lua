return {
  "lewis6991/hover.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
  },
  opts = {
    init = function()
      -- Hover com <C-k>
      vim.keymap.set("n", "<C-k>", require("hover").hover, { desc = "Hover documentation" })
      
      -- Ações interativas no hover (ex: [d] para ir à definição)
      vim.keymap.set("n", "K", function()
        require("hover").hover()
        require("hover").select()
      end, { desc = "Hover + actions" })
    end,
    preview_opts = {
      border = "rounded",
      width = 80,
      height = 20,
    },
    title = true, -- Mostra título da fonte (ex: "typescript-language-server")
  },
}