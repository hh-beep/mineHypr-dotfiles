vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.opt.termguicolors = true

return {
  "nvim-tree/nvim-tree.lua",
  lazy = false,
  opts = {
    view = {
      adaptive_size = true,
      side = "left",
      width = 25
    },
  },
  config = function(_, opts)
    require("nvim-tree").setup(opts)
  end
}
