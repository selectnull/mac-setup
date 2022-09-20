packer.use 'cloudhead/neovim-fuzzy'

local Keymap = require 'selectnull.utils'.Keymap
Keymap.set("n", "<C-p>", ":FuzzyOpen<CR>")
Keymap.set("n", "<M-p>", ":FuzzyGrep<CR>")
