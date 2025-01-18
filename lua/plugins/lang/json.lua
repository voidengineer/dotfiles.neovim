return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "json5" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").jsonls.setup({
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
      })
    end,
    dependencies = {
      "b0o/schemastore.nvim",
      version = false,
    },
  },
}
