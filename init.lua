-- lido.nvim
-- personal neovim config

vim.g.mapleader = " "

-- install `lazy.nvim` plugin manager
--   https://github.com/folke/lazy.nvim
--   See `:help lazy.nvim.txt`
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system {
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  }
end

-- Add lazy to the `runtimepath`
---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

-- Set up Lazy and load lua/custom/plugins
require("lazy").setup({ import = "plugins" }, {
  checker = {
    enabled = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})
