-- Enable Emacs style movement in insert mode
-- Some men just want to watch the world burn.

-- vim.keymap.set("i", "<C-n>", "<Down>")
-- vim.keymap.set("i", "<C-p>", "<Up>")
-- up and down are not worth it
vim.keymap.set({ "i", "c" }, "<C-b>", "<Left>")
vim.keymap.set({ "i", "c" }, "<C-f>", "<Right>")
vim.keymap.set({ "c", "i" }, "<C-a>", "<Home>")
vim.keymap.set({ "c", "i" }, "<C-e>", "<End>")
