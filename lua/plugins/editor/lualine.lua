return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    version = false,
    opts = {
      options = {
        disabled_filetypes = {
          statusline = { "snacks_dashboard" },
        },
      },
      extensions = { "neo-tree", "lazy", "fzf" },
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
}
