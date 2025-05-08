return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "markdown", "markdown_inline" },
    },
  },
  {
    "mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "marksman" },
    },
  },
  {
    "conform.nvim",
    opts = {
      formatters_by_ft = {
        markdown = { "markdownlint" },
      },
    },
  },
  {
    "nvim-lint",
    opts = {
      linters_by_ft = {
        markdown = { "markdownlint" },
      },
    },
  },
  {
    "MeanderingProgrammer/render-markdown.nvim",
    version = "8.*",
    ft = { "markdown", "codecompanion" },
    opts = {
      completions = {
        blink = {
          enabled = true,
        },
      },
    },
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "markdown", "codecompanion" },
        callback = function()
          vim.keymap.set("n", "<leader>eP", function()
            require("render-markdown").toggle()
          end, { buffer = true, desc = "Toggle Preview" })
        end,
      })
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons",
      "saghen/blink.cmp",
    },
  },
}
