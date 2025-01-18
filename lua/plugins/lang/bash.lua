return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "bash" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").bashls.setup({})
    end,
  },
}
