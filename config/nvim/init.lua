-- see `:help mapleader`
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- my own configuration
require "selectnull.vimopts"
require "selectnull.keymaps"
require "selectnull.emacs-insert-mode"
require "selectnull.make-css"
require "selectnull.filetypes"
require "selectnull.quickfix"

-- load plugins via lazy.nvim
require "config.lazy"

-- see `:help colorscheme`
vim.cmd.colorscheme "kanagawa-wave"

-- see `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
