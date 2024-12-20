-- Enable Emacs style movement in insert mode
-- Some men just want to watch the world burn.

local o = { noremap = true, silent = true }
-- vim.keymap.set("i", "<C-n>", "<Down>", o)
-- vim.keymap.set("i", "<C-p>", "<Up>", o)
vim.keymap.set("i", "<C-b>", "<Left>", o)
vim.keymap.set("i", "<C-f>", "<Right>", o)
vim.keymap.set("i", "<C-a>", "<C-o>^", o)
vim.keymap.set("i", "<C-e>", "<C-o>$", o)
