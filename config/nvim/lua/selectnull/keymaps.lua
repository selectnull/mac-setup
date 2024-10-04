local Keymap = require("selectnull.utils").Keymap

-- Remap space as leader key
Keymap.set("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Navigate buffers
Keymap.set("n", "<Tab>", ":bnext<CR>")
Keymap.set("n", "<S-Tab>", ":bprevious<CR>")

-- Get out of the insert mode
Keymap.set("i", "jk", "<ESC>")

function EditWithRelativePath()
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

-- Set the keybinding
-- vim.api.nvim_set_keymap("n", "<leader>e", "<cmd>lua EditWithRelativePath()<CR>", { noremap = true, silent = true })

-- Shortcut keys
Keymap.set("n", "<leader>e", ":lua EditWithRelativePath()<CR>")
Keymap.set("n", "<leader>w", ":write<CR>")
Keymap.set("n", "<leader>q", ":quitall<CR>")
Keymap.set("n", "<leader>d", ":bdelete<CR>")
Keymap.set("n", "<leader>o", "o<ESC>k")
Keymap.set("n", "<leader>O", "O<ESC>j")
