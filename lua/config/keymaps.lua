-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local keymap = vim.keymap

keymap.set("i", "jj", "<Esc>")
keymap.set("n", "<leader>wv", "<C-W>v")
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>")
--keymap.set("n", "<C-j>", "<cmd>TmuxNavigateDown<cr>")
--keymap.set("n", "<C-k>", "<cmd>TmuxNavigateUp<cr>")

-- tab nav
keymap.set("n", "<leader>tn", "<cmd>tabnext<cr>")
keymap.set("n", "<leader>tp", "<cmd>tabprev<cr>")
keymap.set("n", "<leader>tl", "<cmd>tablast<cr>")
keymap.set("n", "<leader>tf", "<cmd>tabfirst<cr>")

-- telescope general
keymap.set("n", "<leader>lds", "<cmd>Telescope lsp_document_symbols<cr>")
keymap.set("n", "<leader>tgf", "<cmd>Telescope lsp_references<cr>")
keymap.set("n", "<leader>cbf", "<cmd>Telescope current_buffer_fuzzy_find<cr>")
-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- lsp saga
keymap.set("n", "gp", "<cmd>Lspsaga peek_definition<CR>")
keymap.set("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>")
keymap.set("n", "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>") -- jump to previous diagnostic in buffer
keymap.set("n", "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>")

-- keymap
keymap.set("n", "<leader>hw", ":HopWord<cr>")
keymap.set("n", "<leader>hww", ":HopWordMW<cr>")
keymap.set("n", "<leader>hc", ":HopChar1<cr>")
keymap.set("n", "<leader>hcw", ":HopChar1MW<cr>")

--  insert模式下，跳到行首行尾
keymap.set("i", "<C-h>", "<ESC>I")
keymap.set("i", "<C-l>", "<ESC>A")

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
keymap.set("n", "<F2>", ":lua require'dap'.step_out()<CR>")
keymap.set("n", "<F7>", ":lua require'dap'.step_into()<CR>")
keymap.set("n", "<C-F12>", ":lua require'dapui'.eval()<CR>")
