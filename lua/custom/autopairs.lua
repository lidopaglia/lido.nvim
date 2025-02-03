local autopairs = require("nvim-autopairs")

autopairs.setup({
  check_ts = true, -- enable treesitter
  disable_filetype = { "TelescopePrompt", "spectre_panel" },
  disable_in_macro = false,
  disable_in_visualblock = false,
  enable_afterquote = true,
  enable_check_bracket_line = false,
  enable_moveright = true,
  fast_wrap = {
    map = "<M-e>",
    chars = { "{", "[", "(", '"', "'" },
    pattern = string.gsub([[ [%'%"%)%>%]%)%}%,] ]], "%s+", ""),
    offset = 0, -- Offset from pattern match
    end_key = "$",
    keys = "qwertyuiopzxcvbnmasdfghjkl",
    check_comma = true,
    highlight = "Search",
    highlight_grey = "Comment",
  },
  ignored_next_char = string.gsub([[ [%w%%%'%[%"%.] ]], "%s+", ""),
  map_bs = true,
  map_c_w = false,
  map_char = {
    all = "(",
    tex = "{",
  },
  ts_config = {
    -- don't add pairs in lua string treesitter nodes
    lua = { "string" },
    -- don't add pairs in javscript template_string treesitter nodes
    javascript = { "template_string" },
    -- don't check treesitter on java
    java = false,
  },
})

-- import nvim-autopairs completion functionality
local cmp_autopairs = require("nvim-autopairs.completion.cmp")

-- import nvim-cmp plugin (completions plugin)
local cmp = require("cmp")

-- make autopairs and completion work together
cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
