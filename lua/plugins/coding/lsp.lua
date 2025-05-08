return {
  {
    "mason-org/mason-lspconfig.nvim",
    version = "2.*",
    cmd = { "LspInstall", "LspUninstall" },
    opts_extend = { "ensure_installed" },
    opts = {
      ensure_installed = { "harper_ls" },
    },
    dependencies = {
      "williamboman/mason.nvim",
    },
  },
  {
    "neovim/nvim-lspconfig",
    version = "2.*",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      -- noop / required to avoid lazy.nvim calling non-existent #setup()
    end,
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
  },
  {
    "snacks.nvim",
    keys = {
      {
        "<leader>lc",
        function()
          Snacks.picker.lsp_config()
        end,
        desc = "LSP Config",
      },
      {
        "<leader>ls",
        function()
          Snacks.picker.lsp_symbols()
        end,
        desc = "Document Symbols",
      },
      {
        "gR",
        function()
          Snacks.picker.lsp_references()
        end,
        desc = "References",
      },
      {
        "gd",
        function()
          Snacks.picker.lsp_definitions()
        end,
        desc = "Definitions",
      },
      {
        "gD",
        function()
          Snacks.picker.lsp_declarations()
        end,
        desc = "Declarations",
      },
      {
        "gi",
        function()
          Snacks.picker.lsp_implementations()
        end,
        desc = "Implementations",
      },
      {
        "gt",
        function()
          Snacks.picker.lsp_type_definitions()
        end,
        desc = "Type Definitions",
      },
      {
        "<leader>lS",
        function()
          Snacks.picker.lsp_workspace_symbols()
        end,
        desc = "Workspace Symbols",
      },
    },
  },
}
