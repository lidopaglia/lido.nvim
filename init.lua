-- Set <space> as the leader key
--   See `:help mapleader`
-- NOTE: Must happen before plugins are installed
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set the nerd font var.
--   Used by telescope, mini, and lazy configs
vim.g.have_nerd_font = true

require("config.options")
require("config.keymaps")
require("config.autocmd")
require("config.plugmgr")

vim.cmd("set path+=**")

-- See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
