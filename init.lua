-- Set <space> as the leader key
--   See `:help mapleader`
-- NOTE: Must happen before plugins are installed
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set the nerd font var.
--   Used by telescope, mini, and lazy configs
vim.g.have_nerd_font = true

require("lido.options")
require("lido.keymaps")
require("lido.autocmd")

-- [[ Install `lazy.nvim` plugin manager ]]
--   https://github.com/folke/lazy.nvim
--   See `:help lazy.nvim.txt`
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- [[ Configure and install plugins ]]
require("lazy").setup("plugins", {
   checker = { enabled = true, notify = false },
   change_detection = { notify = false },
   install = { colorscheme = { "gruvbox" } },
   ui = {
     border = "rounded",
     -- If using a Nerd Font: set icons to an empty table which will use the
     -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
     icons = vim.g.have_nerd_font and {} or {
       cmd = '⌘',
       config = '🛠',
       event = '📅',
       ft = '📂',
       init = '⚙',
       keys = '🗝',
       plugin = '🔌',
       runtime = '💻',
       require = '🌙',
       source = '📄',
       start = '🚀',
       task = '📌',
       lazy = '💤 ',
     },
   },
  })

vim.cmd("set path+=**")

-- See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
