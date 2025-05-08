return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "dockerfile" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "dockerls", "docker_compose_language_service" },
    },
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
