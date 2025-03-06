-- lido.nvim
-- ~/.config/nvim/init.lua

-- Bootstrap lazy.nvim
--   See `:help lazy.nvim.txt`
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.termguicolors = true

-- Setup lazy.nvim
require("lazy").setup({
  spec = { { import = "plugins" } },
  install = { colorscheme = { "quiet" } },
  checker = { enabled = false, notify = false },
  change_detection = { notify = false },
  ui = { border = "rounded", title = " lazy.nvim " },
})

-- Quit Lazy with escape, not just `q`
-- https://github.com/folke/lazy.nvim/discussions/1196#discussioncomment-7761858
local user_grp = vim.api.nvim_create_augroup("LazyUserGroup", { clear = true })
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lazy",
  desc = "Quit lazy with <esc>",
  callback = function()
    vim.keymap.set("n", "<esc>", function()
      vim.api.nvim_win_close(0, false)
    end, { buffer = true, nowait = true })
  end,
  group = user_grp,
})
