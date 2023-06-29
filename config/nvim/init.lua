packer = require 'packer'
packer.init()
packer.use('wbthomason/packer.nvim')

require 'selectnull.options'
require 'selectnull.keymaps'
require 'selectnull.supertab'
packer.use 'tomtom/tcomment_vim'
require 'selectnull.fuzzy'

require 'selectnull.lsp'
require 'selectnull.filetypes'

require 'selectnull.telescope'
require 'selectnull.statusline'

require 'selectnull.emacs-insert-mode'
require 'selectnull.gitsigns'

require 'selectnull.surround'

require 'selectnull.chatgpt'

require 'selectnull.colorscheme'.try_color_schemes({'codedark', 'papercolor', 'delek'})
