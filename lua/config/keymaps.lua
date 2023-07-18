-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.g.maplocalleader = ","
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("i", "jk", "<Esc>")
vim.keymap.set("n", "<C-p>", '"0p')
vim.keymap.set("n", "<C-P>", '"0P')
vim.cmd("map 0 ^")
vim.keymap.set("t", "<esc>", [[<C-\><C-n>]]) -- Exit from insert mode by Esc in Terminal
vim.keymap.set("n", "<Leader>h", ":noh<cr>")
