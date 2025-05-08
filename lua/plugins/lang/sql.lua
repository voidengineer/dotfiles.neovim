return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "sql" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "sqlls" },
    },
  },
  {
    "conform.nvim",
    opts = {
      formatters_by_ft = {
        sql = { "sqlfluff" },
      },
    },
  },
  {
    "nvim-lint",
    opts = {
      linters_by_ft = {
        sql = { "sqlfluff" },
      },
    },
  },
}
