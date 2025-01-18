return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "dockerfile" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      local lspconfig = require("lspconfig")
      lspconfig.dockerls.setup({})
      lspconfig.docker_compose_language_service.setup({})
    end,
  },
  {
    "nvim-lint",
    opts = {
      linters_by_ft = {
        dockerfile = { "hadolint" },
      },
    },
  },
}
