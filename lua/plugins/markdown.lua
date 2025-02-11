return {
  {
    -- https://github.com/iamcco/markdown-preview.nvim
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },

  {
    -- https://github.com/MeanderingProgrammer/render-markdown.nvim
    "MeanderingProgrammer/render-markdown.nvim",
    dependencies = { "nvim-treesitter/nvim-treesitter", "echasnovski/mini.nvim" },
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {
      code = {
        sign = false,
      },
      heading = {
        enabled = true,
        border = true,
        border_virtual = true,
        width = { "full", "full", "block" },
        left_pad = 1,
        right_pad = 3,
        render_modes = true,
        sign = false,
        icons = { "󰎥  ", "󰎨  ", "󰎫  ", "󰎲  ", "󰎯  ", "󰎴  " },
        position = "inline",
      },
      html = {
        -- Turn on / off all HTML rendering
        enabled = true,
        comment = {
          -- Turn on / off HTML comment concealing
          conceal = false,
        },
      },
    },
  },

  {
    -- https://github.com/epwalsh/obsidian.nvim
    "epwalsh/obsidian.nvim",
    ebabled = true,
    version = "*", -- recommended, use latest release instead of latest commit
    lazy = true,
    ft = "markdown",
    -- Replace the above line with this if you only want to load obsidian.nvim for markdown files in your vault:
    -- event = {
    --   -- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
    --   -- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/**.md"
    --   "BufReadPre path/to/my-vault/**.md",
    --   "BufNewFile path/to/my-vault/**.md",
    -- },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {
      ui = { enable = false },
      workspaces = {
        {
          name = "notes",
          path = "~/personal/notes",
        },
      },
    },
  },
}
