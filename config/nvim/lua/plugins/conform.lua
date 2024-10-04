return {
  -- Autoformat
  "stevearc/conform.nvim",
  opts = {
    notify_on_error = false,
    stop_after_first = true,
    format_on_save = {
      timeout_ms = 500,
      lsp_fallback = true,
    },
    formatters_by_ft = {
      lua = { "stylua" },
      -- Conform can also run multiple formatters sequentially
      -- python = { "isort", "black" },
      --
      javascript = { "prettier" },
    },
  },
}
