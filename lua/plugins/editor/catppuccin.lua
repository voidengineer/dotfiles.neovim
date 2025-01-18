return {
  { -- catppuccin theme
    "catppuccin/nvim",
    name = "catppuccin",
    version = false,
    priority = 1000,
    lazy = false,
    opts = {
      flavor = "auto",
      background = {
        light = "latte",
        dark = "macchiato",
      },
      integrations = {
        which_key = true,
        snacks = true,
        fidget = true,
        telescope = {
          enabled = true,
        },
        neotree = true,
        lsp_trouble = true,
        flash = true,
        gitsigns = true,
        treesitter = true,
        treesitter_context = true,
        blink_cmp = true,
        mason = true,
        markdown = true,
        render_markdown = true,
        dadbod_ui = true,
      },
    },
    config = function(_, opts)
      require("catppuccin").setup(opts)
      vim.cmd.colorscheme("catppuccin")
    end,
  },
  { -- apply colorscheme to bufferline
    "bufferline.nvim",
    optional = true,
    opts = function(_, opts)
      opts.highlights = require("catppuccin.groups.integrations.bufferline").get()
    end,
    dependencies = {
      "catppuccin",
    },
  },
  { -- apply colorscheme to lualine
    "lualine.nvim",
    optional = true,
    opts = {
      options = {
        theme = "catppuccin",
      },
    },
    dependencies = {
      "catppuccin",
    },
  },
}
