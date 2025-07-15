local function save()
  vim.cmd "write"
end

function CompileCSS()
  pcall(save) -- ignore an error (eg no file open)
  vim.cmd "make css"
end

-- Bind in Normal mode and Insert modes
vim.keymap.set({ "n", "i" }, "<M-c>", "<ESC>:lua CompileCSS()<CR>", { silent = true })
