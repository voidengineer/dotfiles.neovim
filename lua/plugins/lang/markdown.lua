return {
  {
    "nvim-treesitter",
    opts = {
      ensure_installed = { "markdown", "markdown_inline" },
    },
  },
  {
    "nvim-lspconfig",
    opts = function()
      require("lspconfig").marksman.setup({})
    end,
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
    ft = "markdown",
    init = function()
      vim.api.nvim_create_autocmd("FileType", {
        pattern = { "markdown" },
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
    },
  },
}
