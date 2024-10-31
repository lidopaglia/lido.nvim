return {
  "preservim/vim-pencil",
  "folke/twilight.nvim",
  "folke/zen-mode.nvim",
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
      workspaces = {
        {
          name = "personal",
          path = "~/Documents/vaults/notes",
        },
        {
          name = "work",
          path = "~/Documents/vaults/work",
        },
      },
    },
  },
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
}
