packer.use {
  'nvim-telescope/telescope.nvim',
  requires = {'nvim-lua/plenary.nvim'}
}

local Keymap = require 'selectnull.utils'.Keymap
Keymap.set('n', '<leader>ff', ':Telescope find_files<CR>')
Keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>')
Keymap.set('n', '<leader><tab>', ':Telescope buffers<CR>')

require('telescope').setup {
  defaults = {
    mappings = {
      i = {
        ['<C-j>'] = 'move_selection_next',
        ['<C-k>'] = 'move_selection_previous',
      }
    }
  }
}
