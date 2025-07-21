return {
  {
    "olimorris/codecompanion.nvim",
    version = "17.*",
    cmd = { "CodeCompanion", "CodeCompanionActions", "CodeCompanionChat", "CodeCompanionCmd" },
    keys = {
      { "<leader>ac", "<cmd>CodeCompanionChat<cr>", desc = "Code Companion Chat" },
      { "<leader>aa", "<cmd>CodeCompanionActions<cr>", desc = "Code Companion Actions" },
    },
    opts = {
      display = {
        chat = {
          window = {
            layout = "vertical",
            position = "right",
          },
        },
        action_palette = {
          provider = "snacks",
        },
      },
      strategies = {
        chat = {
          adapter = "gemini",
        },
        inline = {
          adapter = "gemini",
        },
      },
      adapters = {
        gemini = function()
          return require("codecompanion.adapters").extend("gemini", {
            schema = {
              model = {
                default = "gemini-2.0-flash-lite",
              },
            },
          })
        end,
      },
      extensions = {
        mcphub = {
          callback = "mcphub.extensions.codecompanion",
          opts = {
            show_results_in_chat = true,
            make_vars = true,
            make_slash_commands = true,
          },
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      "ravitemer/mcphub.nvim",
    },
  },
}
