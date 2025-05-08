return {
  {
    "stevearc/conform.nvim",
    version = "9.*",
    event = { "BufWritePre" },
    cmd = { "ConformInfo" },
    opts = {
      formatters_by_ft = {},
      default_format_opts = {
        lsp_format = "fallback",
      },
      format_on_save = {
        timeout_ms = 500,
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
