return {
  {
    -- https://github.com/tadmccorkle/markdown.nvim
    -- also enabled as a treesitter module
    "tadmccorkle/markdown.nvim",
    ft = "markdown",
    opts = {},
  },

  {
    -- https://github.com/hedyhli/outline.nvim
    "hedyhli/outline.nvim",
    lazy = true,
    cmd = { "Outline", "OutlineOpen" },
    keys = {
      { "<leader>to", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {
      symbol_folding = {
        -- Unfold entire symbol tree by default with false, otherwise enter a
        -- number starting from 1
        autofold_depth = false,
      },
      outline_window = {
        -- Percentage or integer of columns
        width = 33,
      },
    },
  },

  {
    -- https://github.com/iamcco/markdown-preview.nvim
    "iamcco/markdown-preview.nvim",
    keys = {
      {
        "<leader>mp",
        ft = "markdown",
        "<cmd>MarkdownPreviewToggle<cr>",
        desc = "Markdown Preview",
      },
    },

    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    ft = { "markdown" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
  },
}
