local opts = { noremap = true, silent = true }

-- Navigate buffers
vim.keymap.set("n", "<Tab>", ":bnext<CR>", opts)
vim.keymap.set("n", "<S-Tab>", ":bprevious<CR>", opts)

-- Get out of the insert mode
vim.keymap.set("i", "jk", "<ESC>", opts)

local function edit_with_relative_path()
  -- Find the Git root directory
  local current_dir = vim.fn.expand "%:p:h"
  local git_command = "git -C " .. current_dir .. " rev-parse --show-toplevel"
  local git_root = vim.fn.systemlist(git_command)[1]
  if vim.v.shell_error ~= 0 then
    -- we are not in git repo, just do normal :edit
    vim.fn.feedkeys(vim.api.nvim_replace_termcodes(":edit ", true, false, true))
    return
  end

  -- Calculate the relative directory path from the Git root
  -- and strip the leading slash
  local relative_dir = vim.fn.substitute(current_dir, git_root, "", ""):gsub("^/", "")

  -- Pre-fill the command line with ':edit ' and the relative directory
  vim.fn.feedkeys(vim.api.nvim_replace_termcodes(":edit " .. relative_dir .. "/", true, false, true))
end

-- Shortcut keys
vim.keymap.set("n", "<leader>e", edit_with_relative_path)
vim.keymap.set("n", "<leader>w", ":write<CR>")
vim.keymap.set("n", "<leader>q", ":quitall<CR>")
vim.keymap.set("n", "<leader>d", ":bdelete<CR>")

-- Insert empty lines below and above the current line
vim.keymap.set("n", "<leader>o", "o<ESC>k")
vim.keymap.set("n", "<leader>O", "O<ESC>j")
