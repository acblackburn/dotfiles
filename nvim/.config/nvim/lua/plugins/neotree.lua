return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  opts = {},
  config = function()
    vim.keymap.set('n', '<leader>n', ':Neotree toggle<CR>', { desc = "Toggle Neo-Tree", noremap = true, silent = true })
    vim.keymap.set('n', '<leader>m', ':Neotree focus<CR>', { desc = "Focus Neo-Tree", noremap = true, silent = true })
  end
}
