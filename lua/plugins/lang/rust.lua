return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "rust", "ron" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").rust_analyzer.setup({})
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^5", -- Recommended
    lazy = false, -- This plugin is already lazy
  },
  {
    "Saecki/crates.nvim",
    event = { "BufRead Cargo.toml" },
    opts = {
      completion = {
        crates = {
          enabled = true,
        },
      },
      lsp = {
        enabled = true,
        actions = true,
        completion = true,
        hover = true,
      },
    },
  },
}
