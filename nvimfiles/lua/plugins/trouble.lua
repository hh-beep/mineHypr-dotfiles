return {
  "folke/trouble.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    auto_open = false,
    auto_close = true,
    auto_preview = true,
  },
  keys = {
    { "<leader>xx", "<cmd>Trouble diagnostics toggle<cr>", desc = "Toggle diagnostics" },
    { "<leader>xd", "<cmd>Trouble diagnostics toggle filter.buf=1<cr>", desc = "Buffer diagnostics" },
    { "]d", function() require("trouble").next({ skip_groups = true, jump = true }) end, desc = "Next diagnostic" },
    { "[d", function() require("trouble").previous({ skip_groups = true, jump = true }) end, desc = "Previous diagnostic" },
    { "K", vim.diagnostic.open_float, desc = "Show diagnostic under cursor" }, -- ✅ Dica rápida!
  },
}