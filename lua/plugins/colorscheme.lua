return {
  {
    -- https://github.com/stevearc/dressing.nvim
    "stevearc/dressing.nvim",
    event = "VeryLazy",
    enabled = true,
  },
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.background = "dark"
      vim.g.zenwritten = {
        transparent_background = true,
        lighten_comments = 13,
      }
      vim.cmd.colorscheme("zenwritten")
      vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
  },
  {
    -- https://github.com/catppuccin/nvim
    -- https://catppuccin.com/palette
    "catppuccin/nvim",
    name = "catppuccin",
    enabled = false,
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
