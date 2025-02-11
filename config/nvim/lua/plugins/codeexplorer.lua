return {
  {
    dir = "~/dev/codeexplorer.nvim/",
    -- release: "selectnull/codeexplorer.nvim"
    config = function()
      require "codeexplorer"

      vim.keymap.set("n", "<C-CR>", ":CodeExplorer<CR>")
    end,
  },
}
