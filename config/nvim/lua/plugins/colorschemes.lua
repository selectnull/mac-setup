local colors = {
  {
    "rose-pine/neovim",
    name = "rose-pine",
  },

  {
    "folke/tokyonight.nvim",
  },

  {
    "olimorris/onedarkpro.nvim",
  },

  {
    "rebelot/kanagawa.nvim",
    config = function()
      require("kanagawa").setup {
        colors = {
          theme = {
            all = { ui = { bg_gutter = "none" } },
          },
        },
      }
    end,
  },
}

-- all colors schemes use priority = 1000 in order to load first
for _, v in pairs(colors) do
  v.priority = 1000
end

return colors
