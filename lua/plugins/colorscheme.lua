return {

  {
    "p00f/alabaster.nvim",
    enabled = true,
    lazy = false,
    priority = 1000,
    config = function(_)
      vim.cmd.colorscheme "alabaster"
    end,
  },

  {
    "xiyaowong/transparent.nvim",
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
