return {
  {
    "williamboman/mason-lspconfig.nvim",
    version = false,
    cmd = { "LspInstall", "LspUninstall" },
    opts_extend = { "ensure_installed" },
    opts = {
      automatic_installation = true,
      ensure_installed = {},
    },
    dependencies = {
      "williamboman/mason.nvim",
    },
  },
  {
    "neovim/nvim-lspconfig",
    version = "1.*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- noop / required to avoid lazy.nvim calling non-existent #setup()
    end,
    opts = function()
      require("lspconfig").harper_ls.setup({})
    end,
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
  },
  -- TODO: Setup LSP keymaps for Telescope
  {
    "telescope.nvim",
    keys = {
      {
        "gd",
        function()
          require("telescope.builtin").lsp_definitions()
        end,
        desc = "Definitions",
      },
      {
        "gr",
        function()
          require("telescope.builtin").lsp_references()
        end,
        desc = "References",
      },
      {
        "gi",
        function()
          require("telescope.builtin").lsp_implementations()
        end,
        desc = "Implementations",
      },
    },
  },
  -- TODO: Setup LSP keymaps for Trouble
  {
    "trouble.nvim",
    keys = {
      { "<leader>ld", "<cmd>Trouble lsp_definitions open<cr>", desc = "Definitions" },
      { "<leader>lr", "<cmd>Trouble lsp_references open<cr>", desc = "References" },
      { "<leader>li", "<cmd>Trouble lsp_implementations open<cr>", desc = "Implementations" },
    },
  },
}
