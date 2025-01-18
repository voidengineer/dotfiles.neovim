return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "yaml" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").yamlls.setup({
        capabilities = {
          textDocument = {
            foldingRange = {
              dynamicRegistration = false,
              lineFoldingOnly = true,
            },
          },
        },
        settings = {
          yaml = {
            schemaStore = {
              enable = false,
              url = "",
            },
            schemas = require("schemastore").yaml.schemas(),
          },
        },
      })
    end,
    dependencies = {
      "b0o/schemastore.nvim",
      version = false,
    },
  },
  {
    "conform.nvim",
    opts = {
      formatters_by_ft = {
        yaml = { "yamlfmt" },
      },
    },
  },
}
