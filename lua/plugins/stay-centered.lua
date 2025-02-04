return {
  {
    -- https://github.com/arnamak/stay-centered.nvim
    "arnamak/stay-centered.nvim",
    opts = function()
      require("stay-centered").setup({
        -- Add any configurations here, like skip_filetypes if needed
        -- skip_filetypes = {"lua", "typescript"},
      })
      -- Define the keymap to toggle the stay-centered plugin
      -- I had to move this keymap here inside, otherwise the plugin started
      -- disabled if I set the keymap outside under "keys"
      vim.keymap.set("n", "<leader><leader>c", function()
        require("stay-centered").toggle()
        vim.notify("Toggled stay-centered", vim.log.levels.INFO)
      end, { desc = "Toggle stay-[c]entered.nvim" })
    end,
  },
}
