return {
  { -- highlighting git changes
    "lewis6991/gitsigns.nvim",
    version = false,
    keys = {
      {
        "[g",
        function()
          return require("gitsigns").nav_hunk("prev")
        end,
        desc = "Previous Git Hunk",
      },
      {
        "[G",
        function()
          return require("gitsigns").nav_hunk("first")
        end,
        desc = "First Git Hunk",
      },
      {
        "]g",
        function()
          return require("gitsigns").nav_hunk("next")
        end,
        desc = "Next Git Hunk",
      },
      {
        "]G",
        function()
          return require("gitsigns").nav_hunk("last")
        end,
        desc = "Last Git Hunk",
      },
      {
        "<leader>ga",
        function()
          require("gitsigns").stage_buffer()
        end,
        desc = "Stage Current Buffer",
      },
      {
        "<leader>gr",
        function()
          require("gitsigns").reset_buffer()
        end,
        desc = "Reset Current Buffer",
      },
    },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      signcolumn = true,
      numhl = true,
      current_line_blame = true,
      current_line_blame_opts = {
        virt_text_pos = "right_align",
      },
    },
  },
  {
    "gitsigns.nvim",
    optional = true,
    opts = function()
      Snacks.toggle({
        name = "Git Signs",
        get = function()
          return require("gitsigns.config").config.signcolumn
        end,
        set = function(state)
          local gs = require("gitsigns")
          gs.toggle_signs(state)
          gs.toggle_numhl(state)
        end,
      }):map("<leader>egs")

      Snacks.toggle({
        name = "Git Line Highlights",
        get = function()
          return require("gitsigns.config").config.linehl
        end,
        set = function(state)
          require("gitsigns").toggle_linehl(state)
        end,
      }):map("<leader>egl")

      Snacks.toggle({
        name = "Git Line Blame",
        get = function()
          return require("gitsigns.config").config.current_line_blame
        end,
        set = function(state)
          require("gitsigns").toggle_current_line_blame(state)
        end,
      }):map("<leader>egb")
    end,
    dependencies = {
      "folke/snacks.nvim",
    },
  },
}
