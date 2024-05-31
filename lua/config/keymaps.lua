-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Umlaut chord mapping
vim.api.nvim_set_keymap("i", "<C-a>o", ":normal iö<CR>", { noremap = true })
vim.api.nvim_set_keymap("i", "<C-a>a", ":normal iö<CR>", { noremap = true })
