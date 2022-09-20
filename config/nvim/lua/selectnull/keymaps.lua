local Keymap = require 'selectnull.utils'.Keymap

-- Remap space as leader key
Keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate buffers
Keymap.set("n", "<Tab>", ":bnext<CR>")
Keymap.set("n", "<S-Tab>", ":bprevious<CR>")

-- Get out of the insert mode
Keymap.set("i", "jk", "<ESC>")


-- Shortcut keys
Keymap.set("n", "<leader>e", ":edit<space>")
Keymap.set("n", "<leader>w", ":write<CR>")
Keymap.set("n", "<leader>q", ":quitall<CR>")
Keymap.set("n", "<leader>d", ":bdelete<CR>")
Keymap.set("n", "<leader>o", "o<ESC>k")
Keymap.set("n", "<leader>O", "O<ESC>j")
