return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "javascript", "typescript" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "ts_ls" },
    },
  },
  {
    "conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd", "prettier", stop_after_first = true },
        typescript = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
  {
    "nvim-lint",
    opts = {
      linters_by_ft = {
        javascript = { "eslint_d" },
        typescript = { "eslint_d" },
      },
    },
  },
}
