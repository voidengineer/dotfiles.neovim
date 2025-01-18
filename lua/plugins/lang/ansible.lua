return {
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").ansiblels.setup({})
    end,
  },
}
