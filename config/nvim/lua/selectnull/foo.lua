local Module = {}

local function is_buffer_blank_and_unsaved()
  local line_count = vim.api.nvim_buf_line_count(0)
  local file_name = vim.api.nvim_buf_get_name(0)

  if line_count == 1 and vim.fn.getline(1) == "" and file_name == "" then
    return true
  else
    return false
  end
end

Module.foo = function()
  print "foobar"
end

Module.is_blank = function()
  local isb = is_buffer_blank_and_unsaved()
  print(tostring(isb))
end

Module.get_current_word = function()
  print(vim.fn.expand "<cword>")
end

Module.debug = function(content)
  local buf = vim.api.nvim_create_buf(false, true)
  vim.api.nvim_buf_set_option(buf, "modifiable", true)
  local lines = vim.split(content, "\n")
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

  vim.api.nvim_command "vsplit"
  vim.api.nvim_win_set_buf(0, buf)
end

Module.get_full_command_name = function(short_name)
  local commands = vim.api.nvim_get_commands {}
  for full_name, cmd_info in pairs(commands) do
    print(full_name)
    if cmd_info.short_name == short_name then
      return full_name
    end
  end
  return nil -- Return nil if no matching command is found
end

Module.get_win_size = function()
  local width = vim.api.nvim_win_get_width(0)
  local height = vim.api.nvim_win_get_height(0)

  return tostring(width) .. "x" .. tostring(height)
end

local function get_file_size(file_path)
  local file = io.open(file_path, "r")
  if not file then
    return nil
  end
  local size = file:seek "end"
  file:close()
  return size
end

Module.get_file_stats = function()
  local file_path = vim.api.nvim_buf_get_name(0)
  print(file_path)

  local buf = vim.api.nvim_create_buf(false, true)
  local width = 60
  local height = 3
  local win_height = vim.api.nvim_get_option "lines"
  local win_width = vim.api.nvim_get_option "columns"

  local opts = {
    style = "minimal",
    relative = "editor",
    border = "single",
    width = width,
    height = height,
    row = (win_height - height) * 0.5 - 1,
    col = (win_width - width) * 0.5,
  }
  vim.api.nvim_open_win(buf, true, opts)
  local lines = { "File: " .. file_path, "---", "Size:" .. get_file_size(file_path) }
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)
  vim.api.nvim_buf_set_keymap(buf, "n", "<CR>", ":q<CR>", { noremap = true, silent = true })
end

return Module
