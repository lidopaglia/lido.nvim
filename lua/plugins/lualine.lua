return {
  -- https://github.com/nvim-lualine/lualine.nvim
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  enabled = true,
  config = function()
    local lualine = require("lualine")

    local diagnostics = {
      "diagnostics",
      sources = { "nvim_diagnostic" },
      sections = { "error", "warn" },
      symbols = { error = " ", warn = " " },
      colored = true,
      update_in_insert = false,
      always_visible = true,
      cond = function()
        return vim.bo.filetype ~= "markdown"
      end,
    }

    local diff = {
      "diff",
      colored = true,
      symbols = { added = " ", modified = " ", removed = " " },
    }

    local branch = {
      "branch",
      icon = "",
    }

    local progress = function()
      local current_line = vim.fn.line(".")
      local total_lines = vim.fn.line("$")
      local chars = { "", "", "" } --adding more chars will still work
      local line_ratio = current_line / total_lines
      local index = math.ceil(line_ratio * #chars)
      return chars[index] .. " " .. math.floor(line_ratio * 100) .. "%%"
    end

    lualine.setup({
      options = {
        icons_enabled = true,
        theme = "auto", --auto allows for theme switching
        component_separators = { left = "", right = "" },
        section_separators = { left = "", right = "" },
        disabled_filetypes = { "alpha", "dashboard" },
        always_divide_middle = true,
      },

      sections = {
        lualine_a = { "filename" },
        lualine_b = { branch },
        lualine_c = { diagnostics },
        lualine_x = { diff, "filetype" },
        lualine_y = { "location" },
        lualine_z = { progress },
      },
      extensions = { "nvim-tree" },
    })
  end,
}
