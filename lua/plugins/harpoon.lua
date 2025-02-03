return {
  -- Getting you where you want with the fewest keystrokes.
  -- https://github.com/ThePrimeagen/harpoon
  "ThePrimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  branch = "harpoon2", -- Merging into mainline April 20th or June 9th (nice)
  config = function()
    local harpoon = require("harpoon")

    harpoon:setup() -- REQUIRED

    vim.keymap.set("n", "<leader>a", function()
      harpoon:list():add()
    end, { desc = "harpoon [a]ppend" })
    vim.keymap.set("n", "<leader>m", function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = "harpoon [m]enu" })
    vim.keymap.set("n", "<leader>j", function()
      harpoon:list():select(1)
    end, { desc = "harpoon [j] select 1" })
    vim.keymap.set("n", "<leader>k", function()
      harpoon:list():select(2)
    end, { desc = "harpoon [k] select 2" })
    vim.keymap.set("n", "<leader>l", function()
      harpoon:list():select(3)
    end, { desc = "harpoon [l] select 3" })
    vim.keymap.set("n", "<leader>;", function()
      harpoon:list():select(4)
    end, { desc = "harpoon [;] select 4" })
  end,
}
