return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "yaml" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "yamlls" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      vim.lsp.config["yamlls"] = {
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
      }
    end,
    dependencies = {
      { "b0o/schemastore.nvim", version = false },
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
  {
    "nvim-lint",
    opts = {
      linters_by_ft = {
        yaml = { "yamllint" },
      },
    },
  },
}
