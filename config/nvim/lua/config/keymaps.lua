-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Check if we are in a GUI client
local is_gui = vim.fn.has("gui_running") == 1 or vim.g.neovide

-- Next buffer (right tab)
vim.keymap.set("n", "<C-Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
-- Previous buffer (left tab)
vim.keymap.set("n", "<C-S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

vim.keymap.set("n", "<leader>cg", "<cmd>CMakeConfigure<cr>", { desc = "CMake Configure" })
vim.keymap.set("n", "<leader>cb", "<cmd>CMakeBuild<cr>", { desc = "CMake Build" })
vim.keymap.set("n", "<leader>cr", "<cmd>CMakeRun<cr>", { desc = "CMake Run" })
vim.keymap.set("n", "<leader>ct", "<cmd>CMakeSelectRunTarget<cr>", { desc = "CMake Select Target" })
vim.keymap.set("n", "<leader>cd", "<cmd>CMakeDebug<cr>", { desc = "CMake Debug" })
