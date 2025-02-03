return {
  -- https://github.com/lukas-reineke/indent-blankline.nvim
  --   See `:help ibl.config`
  "lukas-reineke/indent-blankline.nvim",
  event = { "BufReadPre", "BufNewFile" },
  main = "ibl",
  opts = { indent = { char = "┊" } },
}
