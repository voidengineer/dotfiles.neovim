return {
  {
    "stevearc/conform.nvim",
    version = "8.*",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {},
      format_on_save = {
        timeout_ms = 500,
        lsp_fallback = true,
      },
    },
  },
  {
    "zapling/mason-conform.nvim",
    version = false,
    event = { "BufWritePre" },
    opts = {},
    dependencies = {
      "williamboman/mason.nvim",
      "stevearc/conform.nvim",
    },
  },
}
