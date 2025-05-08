return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "helm" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "helm_ls" },
    },
  },
}
