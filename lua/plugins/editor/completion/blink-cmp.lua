return {
  {
    "saghen/blink.cmp",
    version = "*",
    event = { "InsertEnter", "CmdLineEnter" },
    opts_extend = {
      "sources.default",
    },
    opts = {
      keymap = {
        preset = "enter",
        ["<esc>"] = { "cancel", "fallback" },

        cmdline = {
          preset = "super-tab",
        },
      },
      completion = {
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
        ghost_text = {
          enabled = true,
        },
        documentation = {
          auto_show = true,
        },
        menu = {
          draw = {
            columns = {
              { "label", "label_description", gap = 1 },
              { "kind_icon", "kind", gap = 1 },
              { "source_name" },
            },
            treesitter = { "lsp" },
          },
        },
      },
      appearance = {
        nerd_font_variant = "mono",
      },
      sources = {
        default = { "lsp", "path", "snippets", "buffer" },
      },
      signature = {
        enabled = true,
      },
    },
    dependencies = {
      "rafamadriz/friendly-snippets",
    },
  },
}
