return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "lua" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "lua_ls" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").lua_ls.setup({})
    end,
  },
  {
    "conform.nvim",
    opts = {
      formatters_by_ft = {
        lua = { "stylua" },
      },
    },
  },
  {
    "nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "luacheck" },
      },
    },
  },
  {
    "folke/lazydev.nvim",
    version = false,
    ft = "lua",
    cmd = "LazyDev",
    opts = {
      library = {
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
        { path = "snacks.nvim", words = { "Snacks" } },
        { path = "lazy.nvim", words = { "LazyVim" } },
      },
    },
  },
  {
    "blink.cmp",
    opts = {
      sources = {
        default = { "lazydev" },
        providers = {
          lazydev = {
            name = "LazyDev",
            module = "lazydev.integrations.blink",
            score_offset = 100,
          },
        },
      },
    },
  },
}
