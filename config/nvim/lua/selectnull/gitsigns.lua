packer.use {
  'lewis6991/gitsigns.nvim',
  config = function()
    require('gitsigns').setup{
      on_attach = function(bufnr)

      end
    }
  end
}
local Keymap = require 'selectnull.utils'.Keymap
Keymap.set('n', 'gn', ':Gitsigns next_hunk<CR>')
Keymap.set('n', 'gp', ':Gitsigns prev_hunk<CR>')
