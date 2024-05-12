-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- keys for better default experience
-- See `:help vim.key.set()`
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

-- for dealing with word wrap
vim.keymap.set("n", "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set("n", "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- open netrw
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- keep centered
vim.keymap.set("n", "J", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- tab indent
vim.keymap.set("v", "<TAB>", ">gv")
vim.keymap.set("v", "<S-TAB>", "<gv")

-- easier move between splits
vim.keymap.set("n", "<C-j>", "<C-w><C-j>")
vim.keymap.set("n", "<C-k>", "<C-w><C-k>")
vim.keymap.set("n", "<C-l>", "<C-w><C-l>")
vim.keymap.set("n", "<C-h>", "<C-w><C-h>")
vim.keymap.set("n", "<C-q>", "<C-w><C-q>")

-- paste over selected text without yanking it
vim.keymap.set("x", "<leader>p", [["_dP]])

-- yank to clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])

-- yank line to clipboard
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete current line adding it to the default register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- replace all occurrences of the word under cursor
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Q can GTFO
vim.keymap.set("n", "Q", "<nop>")

-- make the current file executable
vim.keymap.set("n", "<leader>fx", "<cmd>!chmod +x %<CR>", { silent = true, desc = "Make current file executable" })

-- use tab to switch buffers
vim.keymap.set("n", "<TAB>", ":bnext<CR>")
vim.keymap.set("n", "<S-TAB>", ":bprevious<CR>")

-- use shift h & l to switch buffers
vim.keymap.set("n", "<S-l>", ":bnext<CR>")
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")

-- close buffer
vim.keymap.set("n", "<leader>dd", ":bd<CR>")

-- tmux sessionizer
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")

-- quickfix
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- toggle boolean word under cursor
function ToggleBool(args)
 if args.word == "true" then
   vim.cmd [[norm ciwfalse]]
 elseif args.word == "false" then
   vim.cmd [[norm ciwtrue]]
 elseif args.word == "True" then
   vim.cmd [[norm ciwFalse]]
 elseif args.word == "False" then
   vim.cmd [[norm ciwTrue]]
 elseif args.word == "TRUE" then
   vim.cmd [[norm ciwFALSE]]
 elseif args.word == "FALSE" then
   vim.cmd [[norm ciwTRUE]]
 else
   print "Word under cursor needs to be 'true' or 'false"
 end
end
vim.keymap.set( { "n", "v" }, "<leader>tb", ":lua ToggleBool({word=vim.fn.expand('<cword>')})<cr>",
 { desc = '[T]oggle [B]oolean (word under cursor)', noremap = true, silent = true }
)
