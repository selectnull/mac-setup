local function delete_trailing_whitespace()
  local save_cursor = vim.fn.getpos "."
  vim.cmd [[%s/\s\+$//e]]
  vim.fn.setpos(".", save_cursor)
end

vim.api.nvim_create_user_command("DeleteTrailingWhitespace", delete_trailing_whitespace, {})
