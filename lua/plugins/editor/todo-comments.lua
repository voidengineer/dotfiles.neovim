return {
  { -- navigating and searching TODOs
    "folke/todo-comments.nvim",
    version = "1.*",
    cmd = { "TodoTrouble", "TodoTelescope" },
    keys = {
      {
        "]T",
        function()
          require("todo-comments").jump_next()
        end,
        desc = "Next Todo Comment",
      },
      {
        "[T",
        function()
          require("todo-comments").jump_prev()
        end,
        desc = "Previous Todo Comment",
      },
    },
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
  { -- integrate todo-comments with telescope.nvim
    "todo-comments.nvim",
    optional = true,
    keys = {
      { "<leader>pt", "<cmd>TodoTelescope<cr>", desc = "TODOs" },
    },
    opts = function()
      require("telescope").load_extension("todo-comments")
    end,
    dependencies = {
      "nvim-telescope/telescope.nvim",
    },
  },
  { -- integrate todo-comments with trouble.nvim
    "todo-comments.nvim",
    optional = true,
    keys = {
      { "<leader>xt", "<cmd>Trouble todo toggle<cr>", desc = "TODOs" },
    },
    dependencies = {
      "folke/trouble.nvim",
    },
  },
}
