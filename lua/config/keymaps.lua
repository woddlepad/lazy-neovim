-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Function to execute Python code

-- Load the ExecutePython function
require("config.pythoncp")

vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set("v", "<leader>cp", ":lua ExecutePython()<CR>", { noremap = true, silent = true })

-- Flutter keymaps
vim.keymap.set("n", "<leader>pp", ":FlutterRestart<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pr", ":FlutterRun<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>pq", ":FlutterQuit<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>cc", ":CopilotChatToggle<CR>", { noremap = true, silent = true })
