return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "sql" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").sqlls.setup({})
    end,
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
