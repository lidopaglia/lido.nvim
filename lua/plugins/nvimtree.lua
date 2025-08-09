return {
  "nvim-tree/nvim-tree.lua",
  enabled = true,
  version = "*",
  dependencies = {
<<<<<<< HEAD
    'nvim-tree/nvim-web-devicons',
=======
    "nvim-tree/nvim-web-devicons",
>>>>>>> gitea/main
  },
  config = function()
    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      renderer = {
        group_empty = true,
      },
      filters = {
        custom = { "^.git$" },
<<<<<<< HEAD
        dotfiles = true,
=======
        dotfiles = false,
>>>>>>> gitea/main
      },
      view = {
        width = 30,
        side = "left",
      },
      update_focused_file = {
        enable = true,
        update_cwd = true,
      },
    })
<<<<<<< HEAD
    vim.keymap.set('n', '<leader>tn', ':NvimTreeToggle<CR>', { desc = '[T]oggle [N]vimTree' })
=======
    vim.keymap.set("n", "<leader>tn", ":NvimTreeToggle<CR>", { desc = "[T]oggle [N]vimTree" })
>>>>>>> gitea/main
  end,
}
