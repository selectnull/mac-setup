return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- setup tree-sitter
    local configs = require "nvim-treesitter.configs"
    configs.setup {
      ensure_installed = { "lua", "python", "javascript" },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }
  end,
}
