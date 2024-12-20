local function is_quickfix_open()
  for _, win in pairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then
      return true
    end
  end
  return false
end

local function toggle_quickfix()
  if is_quickfix_open() then
    vim.cmd "cclose"
  else
    vim.cmd "copen"
  end
end

local o = { noremap = true, silent = true }
vim.keymap.set("n", "<leader>cn", ":cnext<CR>", o)
vim.keymap.set("n", "<leader>cp", ":cprev<CR>", o)
vim.keymap.set("n", "<leader>co", ":copen<CR>", o)
vim.keymap.set("n", "<leader>cq", ":cclose<CR>", o)
vim.keymap.set("n", "<leader>cc", toggle_quickfix, o)
