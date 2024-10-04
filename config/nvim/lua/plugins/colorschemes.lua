return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    no_init = function()
      vim.cmd.colorscheme "rose-pine"
    end,
  },

  {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    no_init = function()
      -- Load the colorscheme here.
      -- Like many other themes, this one has different styles, and you could load
      -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
      vim.cmd.colorscheme "tokyonight-night"

      -- You can configure highlights by doing something like
      vim.cmd.hi "Comment gui=none"
    end,
  },

  {
    "eldritch-theme/eldritch.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
    no_init = function()
      vim.cmd.colorscheme "eldritch"
    end,
  },

  {
    "rebelot/kanagawa.nvim",
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = "none",
          },
        },
      },
    },
    init = function()
      vim.cmd.colorscheme "kanagawa-wave"
    end,
  },
}
