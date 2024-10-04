-- set options based on filetype

local autocmd = function(opts)
  vim.api.nvim_create_autocmd("FileType", opts)
end

autocmd {
  pattern = "python",
  callback = function()
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
}

autocmd {
  pattern = { "javascript", "html", "htmldjango", "lua" },
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.softtabstop = 2
  end,
}
