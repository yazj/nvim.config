-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("i", "jj", "<Esc>")
keymap.set("n", "<leader>wv", "<C-W>v")
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")
