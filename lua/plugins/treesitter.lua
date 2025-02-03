return {
  -- Highlight, edit, and navigate code
  -- https://github.com/nvim-treesitter/nvim-treesitter
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  dependencies = {
    "nvim-treesitter/nvim-treesitter-textobjects",
    "windwp/nvim-ts-autotag",
  },
  opts = {
    -- A list of parser names, or "all"
    -- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
    ensure_installed = {
      "awk",
      "bash",
      "c",
      "cmake",
      "lua",
      "luadoc",
      "perl",
      "printf",
      "vim",
      "vimdoc",
      "astro",
      "css",
      "html",
      "javascript",
      "php",
      "tsx",
      "typescript",
      "diff",
      "git_config",
      "git_rebase",
      "gitattributes",
      "gitcommit",
      "gitignore",
      "csv",
      "dockerfile",
      "json",
      "just",
      "passwd",
      "pem",
      "promql",
      "yaml",
      "query",
      "markdown",
      "markdown_inline",
      "nix",
      "go",
      "gomod",
      "ruby",
      "rust",
    },

    -- Automatically install missing parsers when entering buffer
    -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
    auto_install = true,

    highlight = {
      enable = true, -- `false` will disable the whole extension
      disable = {}, -- list of languages that will be disabled

      -- Some languages depend on vim's regex highlighting system (such as Ruby) for indent rules.
      --  If you are experiencing weird indenting issues, add the language to
      --  the list of additional_vim_regex_highlighting and disabled languages for indent.
      --  Setting this to true will run `:h syntax` and tree-sitter at the same time
      --  and may slow down your editor. Instead of true it can also be a list of languages.
      additional_vim_regex_highlighting = { "ruby" },
    },

    indent = { enable = true, disable = { "ruby" } },

    -- enable autotagging (w/ nvim-ts-autotag plugin)
    -- autotag = { enable = true, },

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    -- List of parsers to ignore installing (or "all")
    ignore_install = {},

    -- incremental_selection = {
    --   enable = true,
    --   keymaps = {
    --     init_selection = "<C-space>",
    --     node_incremental = "<C-space>",
    --     scope_incremental = false,
    --     node_decremental = "<bs>",
    --   },
    -- },

    -- enable nvim-ts-context-commentstring plugin for commenting tsx and jsx
    -- context_commentstring = {
    --   enable = true,
    --   enable_autocmd = false,
    -- },
  },
  config = function(_, opts)
    -- [[ Configure Treesitter ]] See `:help nvim-treesitter`

    ---@diagnostic disable-next-line: missing-fields
    require("nvim-treesitter.configs").setup(opts)

    -- There are additional nvim-treesitter modules that you can use to interact
    -- with nvim-treesitter. You should go explore a few and see what interests you:
    --
    --    - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --    - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --    - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  end,
}
