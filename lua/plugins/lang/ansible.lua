return {
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "ansiblels" },
    },
  },
  {
    "nvim-lint",
    opts = {
      linters_by_ft = {
        ["yaml.ansible"] = { "ansible_lint" },
      },
    },
  },
}
