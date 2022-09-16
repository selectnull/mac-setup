-- set options based on filetype

local autocmd = function(cmd) 
  vim.api.nvim_exec('autocmd '..cmd, false)
end

-- markdown
autocmd('BufNewFile,BufReadPost *.md set filetype=markdown')
autocmd('BufNewFile,BufNew,BufRead *.md setlocal textwidth=72')

-- python
autocmd('BufNewFile,BufNew,BufRead *.py setlocal softtabstop=4 shiftwidth=4')

-- javascript and friends
autocmd('BufNewFile,BufNew,BufRead *.js setlocal softtabstop=2 shiftwidth=2')
autocmd('BufNewFile,BufNew,BufRead *.mjs setlocal softtabstop=2 shiftwidth=2')
autocmd('BufNewFile,BufNew,BufRead *.ts setlocal softtabstop=2 shiftwidth=2')

-- html
autocmd('BufNewFile,BufNew,BufRead *.html setlocal softtabstop=2 shiftwidth=2')

-- lua
autocmd('BufNewFile,BufNew,BufRead *.lua setlocal softtabstop=2 shiftwidth=2')
