return {
  "lewis6991/gitsigns.nvim",
  config = function()
    require("gitsigns").setup {

      on_attach = function()
        local gs = package.loaded.gitsigns
        vim.keymap.set("n", "<C-,>", gs.prev_hunk, {})
        vim.keymap.set("n", "<C-.>", gs.next_hunk, {})
      end,
    }
  end,
}
