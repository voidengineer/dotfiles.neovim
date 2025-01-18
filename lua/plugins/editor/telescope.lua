return {
  { -- fuzzy picker
    "nvim-telescope/telescope.nvim",
    version = false,
    keys = {
      {
        "<leader>pf",
        function()
          require("telescope.builtin").find_files()
        end,
        desc = "Find Files",
      },
      {
        "<leader>ps",
        function()
          require("telescope.builtin").live_grep()
        end,
        desc = "Search (Grep) for Files",
      },
      {
        "<leader>pr",
        function()
          require("telescope.builtin").registers()
        end,
        desc = "Registers",
      },
      {
        "<leader>gs",
        function()
          require("telescope.builtin").git_files()
        end,
        desc = "Find Files",
      },
      {
        "<leader>bs",
        function()
          require("telescope.builtin").buffers({ sort_mru = true, ignore_current_buffer = true })
        end,
        desc = "Switch Buffer",
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
    },
  },
}
