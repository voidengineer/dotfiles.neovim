return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "bash" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "bashls" },
    },
  },
}
