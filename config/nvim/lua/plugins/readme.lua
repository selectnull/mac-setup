return {
  "selectnull/plugin-readme.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    local readme = require "plugin-readme"
    vim.keymap.set("n", "<leader>p", readme.select_plugin, {})
  end,
}
