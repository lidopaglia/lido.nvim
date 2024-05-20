return {

  -- https://github.com/tpope/vim-fugitive
  --   See `:help fugitive`
  "tpope/vim-fugitive",

  -- Detect tabstop and shiftwidth automatically
  "tpope/vim-sleuth",

  -- "gc" to comment visual regions/lines
  { "numToStr/Comment.nvim", opts = {} },

  {
    "folke/todo-comments.nvim",
    event = "VimEnter",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = { signs = false },
  },

  { -- https://github.com/mbbill/undotree
    "mbbill/undotree",
    config = function()
      vim.keymap.set("n", "<leader>tu", vim.cmd.UndotreeToggle, { desc = "[T]oggle [U]ndotree" })
    end,
  },

  { -- https://github.com/lukas-reineke/indent-blankline.nvim
    --   See `:help ibl.config`
    "lukas-reineke/indent-blankline.nvim",
    event = { "BufReadPre", "BufNewFile" },
    main = "ibl",
    opts = { indent = { char = "┊" } },
  },

  { -- https://github.com/kylechui/nvim-surround
    "kylechui/nvim-surround",
    event = { "BufReadPre", "BufNewFile" },
    version = "*", -- Use for stability; omit to use `main` for latest features
    config = true,
  },

  {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = { "hrsh7th/nvim-cmp" },
    config = function()
      require "custom.autopairs"
    end,
  },
}
