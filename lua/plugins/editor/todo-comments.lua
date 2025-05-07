return {
  { -- navigating and searching TODOs
    "folke/todo-comments.nvim",
    version = "1.*",
    cmd = { "TodoTrouble" },
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
