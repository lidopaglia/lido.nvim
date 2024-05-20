return {
  -- https://github.com/ellisonleao/gruvbox.nvim
  "ellisonleao/gruvbox.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
      strings = true,
      comments = true,
      operators = false,
      folds = true,
    },
    strikethrough = true,
    invert_selection = false,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "", -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = true,
  },
  -- callig config here replaces the default, so we pass `opts` to include them.
  -- https://github.com/folke/lazy.nvim/issues/986#issuecomment-1675385458
  config = function(_, opts)
    require("gruvbox").setup(opts)
    vim.cmd.colorscheme "gruvbox"
  end,
}
