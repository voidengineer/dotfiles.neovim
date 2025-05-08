return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "json5" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "jsonls" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      vim.lsp.config["jsonls"] = {
        settings = {
          json = {
            schemas = require("schemastore").json.schemas(),
            format = {
              enable = true,
            },
            validate = {
              enable = true,
            },
          },
        },
      }
    end,
    dependencies = {
      { "b0o/schemastore.nvim", version = false },
    },
  },
}
