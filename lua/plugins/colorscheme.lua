return {

  {
    "erikbackman/brightburn.vim",
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme "brightburn"
      vim.api.nvim_set_hl(0, "Comment", { fg = "#585858", italic = true })
    end,
  },
  {
    "rose-pine/neovim",
    enabled = false,
    name = "rose-pine",
    config = function()
      require("rose-pine").setup {
        disable_background = true,
      }
      vim.cmd.colorscheme "rose-pine"
    end,
  },

  {
    "p00f/alabaster.nvim",
    enabled = false,
    lazy = false,
    priority = 1000,
    config = function(_)
      vim.cmd.colorscheme "alabaster"
    end,
  },

  {
    "xiyaowong/transparent.nvim",
    enabled = true,
    lazy = false,
    config = {
      extra_groups = {
        "FloatBorder",
        "LSPInfoBorder",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NormalFloat",
        "NotifyDEBUGBody",
        "NotifyDEBUGBorder",
        "NotifyERRORBody",
        "NotifyERRORBorder",
        "NotifyINFOBody",
        "NotifyINFOBorder",
        "NotifyTRACEBody",
        "NotifyTRACEBorder",
        "NotifyWARNBody",
        "NotifyWARNBorder",
        "TelescopeBorder",
        "TelescopePreviewNormal",
        "TelescopePromptNormal",
        "TelescopeResultsNormal",
        "WhichKeyFloat",
      },
      exclude_groups = {},
    },
    keys = {
      {
        "<Leader>tt",
        "<Cmd>TransparentToggle<Cr>",
        desc = "Toggle Transparency",
      },
    },
  },
}
