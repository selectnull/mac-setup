return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  notconfig = function()
    local fzf = require "fzf-lua"
    vim.keymap.set("n", "<C-p>", fzf.files, {})
    vim.keymap.set("n", "<M-p>", fzf.grep, {})
    vim.keymap.set("n", "<leader><tab>", fzf.buffers, {})
  end,
}
