--Keymaps - Easier Navigation
vim.g.mapleader = " "

--Window Navigation
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)                   --Go to previous window
vim.keymap.set("n", "<C-h>", "<C-w>h")                          --Switching to left window
vim.keymap.set("n", "<C-j>", "<C-w>j")                          --Switching to bottom window
vim.keymap.set("n", "<C-k>", "<C-w>k")                          --Switching to right window
vim.keymap.set("n", "<C-l>", "<C-w>l")                          --Switching to top window

--Resizing Cmd Section
vim.keymap.set("n", "<C-Up>", ":resize +2<CR>")
vim.keymap.set("n", "<C-Down>", ":resize -2<CR>")
vim.keymap.set("n", "<C-Left>", ":vertical resize -2<CR>")
vim.keymap.set("n", "<C-Right>", ":vertical resize +2<CR>")

--File Explorer
vim.keymap.set("n", "<leader>e", ":Neotree<CR>")                 --Open File Explorer
vim.keymap.set("n", "<leader>nc", ":NeoTreeClose<CR>")

--Buffer Navigation
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
vim.keymap.set("n", "<S-l>", ":bnext<CR>")

vim.keymap.set("n", "<C-s>", ":w<CR>")

--View Buffer
vim.keymap.set("n", "<leader>nb", ":Neotree buffers<CR>")

--Vista Remap
vim.keymap.set("n", "<leader>vft", ":Vista finder<CR>")
vim.keymap.set("n", "<leader>vt", ":Vista<CR>")
vim.keymap.set("n", "<leader>vat", ":Vista finder!<CR>")

--Moving Text
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

--FzfLua Mappings
vim.keymap.set("n", "grep", ":FzfLua grep<CR>")
vim.keymap.set("n", "<leader>lg", ":FzfLua live_grep<CR>")
vim.keymap.set("n", "<leader>bf", ":FzfLua buffers<CR>")
vim.keymap.set("n", "<leader>fs", ":FzfLua files<CR>")
