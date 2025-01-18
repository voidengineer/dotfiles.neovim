return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "helm" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").helm_ls.setup({})
    end,
  },
}
