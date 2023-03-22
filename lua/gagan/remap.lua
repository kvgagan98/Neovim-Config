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

--Buffer Navigation
vim.keymap.set("n", "<S-h>", ":bprevious<CR>")
vim.keymap.set("n", "<S-l>", ":bnext<CR>")

vim.keymap.set("n", "<C-s>", ":w<CR>")
