-- my options
local options = {
  scrolloff = 4,
  signcolumn = "yes",

  termguicolors = true,
  background = "dark",

  expandtab = true,
  tabstop = 4,
  shiftwidth = 4,

  hlsearch = false,

  ignorecase = true,
  smartcase = true,

  shortmess = "filnxtToOFI",
}

for k, v in pairs(options) do
  vim.opt[k] = v
end
