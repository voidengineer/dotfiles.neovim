return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "javascript", "typescript" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").ts_ls.setup({})
    end,
  },
  {
    "conform.nvim",
    opts = {
      formatters_by_ft = {
        javascript = { "prettierd" },
        typescript = { "prettierd" },
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
