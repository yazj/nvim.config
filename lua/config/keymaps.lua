-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

keymap.set("i", "jj", "<Esc>")
keymap.set("n", "<leader>wv", "<C-W>v")
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")

-- Dap

keymap.set(
  "n",
  "<F4>",
  ":lua require'dap'.close()<CR>"
    .. ":lua require'dap'.terminate()<CR>"
    .. ":lua require'dap.repl'.close()<CR>"
    .. ":lua require'dapui'.close()<CR>"
    .. ":lua require('dap').clear_breakpoints()<CR>"
    .. "<C-w>o<CR>"
)

keymap.set("n", "<F5>", ":lua require'dap'.continue()<CR>")
keymap.set("n", "<F6>", ":lua require'dap'.toggle_breakpoint()<CR>")
keymap.set("n", "<F3>", ":lua require'dap'.clear_breakpoints()<CR>")
keymap.set("n", "<F12>", ":lua require'dap'.step_over()<CR>")
keymap.set("n", "<F7>", ":lua require'dap'.step_out()<CR>")
keymap.set("n", "<F10>", ":lua require'dap'.step_into()<CR>")
keymap.set("n", "<F2>", ":lua require'dapui'.eval()<CR>")
