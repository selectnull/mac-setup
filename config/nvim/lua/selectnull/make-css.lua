function CompileCSS()
  vim.cmd "write"
  vim.cmd "make css"
end

-- Bind in Normal mode and Insert modes
vim.api.nvim_set_keymap("n", "<M-c>", ":lua CompileCSS()<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "<M-c>", "<ESC>:lua CompileCSS()<CR>", { noremap = true, silent = true })
