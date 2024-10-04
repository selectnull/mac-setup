Module = {}

Module.Keymap = {}
Module.Keymap.default_opts = { noremap = true, silent = true }

Module.Keymap.set = function(mode, lhs, rhs, opts)
  if not opts then
    opts = Module.Keymap.default_opts
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, opts)
end

Module.Keymap.insert = function(lhs, rhs, opts)
  Module.Keymap.set("i", lhs, rhs, opts)
end

Module.Keymap.normal = function(lhs, rhs, opts)
  Module.Keymap.set("n", lhs, rhs, opts)
end

return Module
