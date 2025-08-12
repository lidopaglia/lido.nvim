-- autocmd

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Prevent new lines from also starting with a comment
vim.api.nvim_create_autocmd({ "BufWinEnter" }, {
  callback = function()
    vim.cmd("set formatoptions-=cro")
  end,
})

-- Restore cursor pos on file open
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    local line = vim.fn.line("'\"")
    if line > 1 and line <= vim.fn.line("$") then
      vim.cmd("normal! g'\" zz")
    end
  end,
})

-- Toggle replacement of all straight apostrophes ' with curly ones ’ only
-- outside code blocks or inline code (backticks) within markdown files
-- Mapped to <leader>cq
vim.api.nvim_create_augroup("MarkdownSmartQuotesToggle", { clear = true })

vim.api.nvim_create_autocmd("FileType", {
  group = "MarkdownSmartQuotesToggle",
  pattern = "markdown",
  callback = function()
    local bufnr = vim.api.nvim_get_current_buf()
    local toggled = false

    local function replace_quotes(lines, to_curly)
      local in_codeblock = false
      for i, line in ipairs(lines) do
        if line:match("^```") then
          in_codeblock = not in_codeblock
        end
        if not in_codeblock then
          local new_line = ""
          local rest = line
          while true do
            local pre, code, tail = rest:match("([^`]*)(`[^`]*`)(.*)")
            if not pre then
              if to_curly then
                new_line = new_line .. rest:gsub("'", "’")
              else
                new_line = new_line .. rest:gsub("’", "'")
              end
              break
            end
            if to_curly then
              pre = pre:gsub("'", "’")
            else
              pre = pre:gsub("’", "'")
            end
            new_line = new_line .. pre .. code
            rest = tail
          end
          lines[i] = new_line
        end
      end
      return lines
    end

    vim.keymap.set("n", "<leader>cq", function()
      local lines = vim.api.nvim_buf_get_lines(bufnr, 0, -1, false)
      lines = replace_quotes(lines, not toggled)
      toggled = not toggled
      vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, lines)
    end, { buffer = bufnr, noremap = true, silent = true })
  end,
})
