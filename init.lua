-- lido.nvim
-- personal neovim config

-- set leader key to space
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
  ui = {
    border = "rounded",
    backdrop = 0,
    title = " lazy.nvim ",
    pills = true,
  },
})

-- set the colorscheme
vim.cmd.colorscheme "habamax"

-- set a transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

-- make comments slightly darker and italic
vim.api.nvim_set_hl(0, "Comment", { fg = "#585858", italic = true })
