-- [[ Setting options ]]
-- See `:help vim.opt` or `:help option-list`

-- Sync clipboard between OS and Neovim.
--  See `:help 'clipboard'`
--vim.opt.clipboard = 'unnamedplus'

vim.opt.updatetime = 50
vim.opt.timeoutlen = 300

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.mouse = "a"
vim.opt.errorbells = false
-- vim.opt.termguicolors = true
vim.opt.wrap = false
vim.opt.title = true

vim.opt.autoindent = true
vim.opt.breakindent = true
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.smarttab = true
vim.opt.softtabstop = 4
vim.opt.tabstop = 4

vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.incsearch = true
vim.opt.smartcase = true

vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = vim.fn.expand "$XDG_CACHE_HOME/nvim/undodir"
vim.opt.undofile = true

vim.opt.colorcolumn = "80"
vim.opt.cursorline = true
vim.opt.scrolloff = 10
vim.opt.sidescrolloff = 12
vim.opt.signcolumn = "yes"

-- Show custom whitespace chars (tab, space, line endings)
--  See `:help 'list'` and `:help 'listchars'`
vim.opt.list = true
vim.opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- Preview substitutions live, as you type!
vim.opt.inccommand = "split"

-- Configure how new splits should be opened
vim.opt.splitbelow = true
vim.opt.splitright = true

-- vim.opt.isfname:append "@-@"
