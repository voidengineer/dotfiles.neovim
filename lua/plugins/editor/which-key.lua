return {
  { -- define basic keybindings and groups with which-key
    "folke/which-key.nvim",
    version = "3.*",
    event = "VeryLazy",
    keys = {
      {
        "<leader>?",
        function()
          require("which-key").show({ global = false })
        end,
        desc = "Show Buffer Keymaps",
      },
    },
    opts_extend = { "spec" },
    opts = {
      preset = "helix",
      spec = {
        { -- groups
          mode = { "n" },
          { "<leader>L", group = "Lazy (plugin management)" },
          { "<leader>e", group = "Editor Settings" },
          { "<leader>eg", group = "Git Settings" },
          { "<leader>b", group = "Buffers" },
          { "<leader>t", group = "Tabs" },
          { "<leader>l", group = "LSP" },
          { "<leader>p", group = "Project Navigation" },
          { "<leader>x", group = "Trouble" },
          { "<leader>g", group = "Git" },
          { "<leader>a", group = "AI" },
          { "<leader>n", group = "Notifications" },
          { "<leader>q", group = "Session Management" },
        },
        { -- working with buffers
          mode = { "n" },
          { "]b", "<cmd>bnext<cr>", desc = "Next Buffer" },
          { "[b", "<cmd>bprevious<cr>", desc = "Previous Buffer" },
          { "<Tab>", "<cmd>bnext<cr>", desc = "Next Buffer" },
          { "<S-Tab>", "<cmd>bprevious<cr>", desc = "Previous Buffer" },
        },
        { --working with tabs
          mode = { "n" },
          { "<leader>tn", "<cmd>tabnew<cr>", desc = "New Tab" },
          { "<leader>tc", "<cmd>tabclose<cr>", desc = "Close Current Tab" },
          { "]t", "<cmd>tabnext<cr>", desc = "Next Tab" },
          { "[t", "<cmd>tabprevious<cr>", desc = "Previous Tab" },
        },
      },
    },
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
}
