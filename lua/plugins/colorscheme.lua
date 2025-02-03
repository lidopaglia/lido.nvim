-- https://github.com/catppuccin/nvim
-- https://catppuccin.com/palette
return {
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    opts = {
      transparent_background = true,
      color_overrides = {
        mocha = {
          base = "#000000",
          mantle = "#000000",
          crust = "#000000",
        },
      },
    },
    config = function()
      -- set the colorscheme
      vim.cmd.colorscheme("catppuccin")
    end,
  },
}
