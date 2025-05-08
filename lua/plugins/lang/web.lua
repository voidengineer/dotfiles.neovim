return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "html", "cssls" },
    },
  },
  {
    "conform.nvim",
    opts = {
      formatters_by_ft = {
        css = { "prettierd", "prettier", stop_after_first = true },
        html = { "prettierd", "prettier", stop_after_first = true },
      },
    },
  },
  {
    "nvim-lint",
    opts = {
      linters_by_ft = {
        htlm = { "htmlhint" },
      },
    },
  },
}
