return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "html", "css" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      local lspconfig = require("lspconfig")
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
    end,
  },
  {
    "conform.nvim",
    opts = {
      formatters_by_ft = {
        css = { "prettier" },
        html = { "prettier" },
      },
    },
  },
}
