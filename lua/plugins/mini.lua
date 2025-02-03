return {
  "echasnovski/mini.nvim",
  version = "*",
  config = function()
    require("mini.ai").setup()
    require("mini.align").setup()
    require("mini.comment").setup()
    require("mini.icons").setup()
    -- require('mini.indentscope').setup()
    -- require("mini.pairs").setup()
    require("mini.surround").setup({
      custom_surroundings = {
        ["l"] = { output = { left = "[", right = "]()" } },
      },
    })
  end,
}
