return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    cmd = { "TSUpdateSync", "TSUpdate", "TSInstall" },
    keys = {
      { "<C-space>", desc = "Increment Selection" },
      { "<bs>", desc = "Decrement Selection", mode = { "x" } },
    },
    event = { "BufReadPre", "BufNewFile" },
    opts_extend = { "ensure_installed" },
    opts = {
      auto_install = true,
      sync_install = false,
      ensure_installed = { "gitignore", "vim" },
      highlight = { enable = true },
      indent = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          node_decremental = "<bs>",
          scope_incremental = false,
        },
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      vim.o.foldmethod = "expr"
      vim.o.foldexpr = "nvim_treesitter#foldexpr()"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-textobjects",
    version = false,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["ac"] = { query = "@class.outer", desc = "Select outer part of a class" },
            ["ic"] = { query = "@class.inner", desc = "Select inner part of a class" },

            ["am"] = { query = "@function.outer", desc = "Select outer part of a method/function definition" },
            ["im"] = { query = "@function.inner", desc = "Select inner part of a method/function definition" },

            ["af"] = { query = "@call.outer", desc = "Select outer part of a function call" },
            ["if"] = { query = "@call.inner", desc = "Select inner part of a function call" },

            ["ai"] = { query = "@conditional.outer", desc = "Select outer part of a conditional" },
            ["ii"] = { query = "@conditional.inner", desc = "Select inner part of a conditional" },

            ["al"] = { query = "@loop.outer", desc = "Select outer part of a loop" },
            ["il"] = { query = "@loop.inner", desc = "Select inner part of a loop" },

            ["aa"] = { query = "@parameter.outer", desc = "Select outer part of a parameter/argument" },
            ["ia"] = { query = "@parameter.inner", desc = "Select inner part of a parameter/argument" },

            ["a="] = { query = "@assignment.outer", desc = "Select outer part of an assignment" },
            ["i="] = { query = "@assignment.inner", desc = "Select inner part of an assignment" },
            ["l="] = { query = "@assignment.lhs", desc = "Select left hand side of an assignment" },
            ["r="] = { query = "@assignment.rhs", desc = "Select right hand side of an assignment" },
          },
        },
        move = {
          enable = true,
          set_jumps = true,
          goto_next_start = {
            ["]c"] = { query = "@class.outer", desc = "Next class start" },
            ["]m"] = { query = "@function.outer", desc = "Next method/function def start" },
            ["]f"] = { query = "@call.outer", desc = "Next function call start" },
            ["]i"] = { query = "@conditional.outer", desc = "Next conditional start" },
            ["]l"] = { query = "@loop.outer", desc = "Next loop start" },
            ["]a"] = { query = "@parameter.inner", desc = "Next parameter/argument start" },
            ["]="] = { query = "@assignment.outer", desc = "Next assignment" },
          },
          goto_next_end = {
            ["]C"] = { query = "@class.outer", desc = "Next class end" },
            ["]M"] = { query = "@function.outer", desc = "Next method/function def end" },
            ["]F"] = { query = "@call.outer", desc = "Next function call end" },
            ["]I"] = { query = "@conditional.outer", desc = "Next conditional end" },
            ["]L"] = { query = "@loop.outer", desc = "Next loop end" },
            ["]A"] = { query = "@parameter.inner", desc = "Next parameter/argument end" },
          },
          goto_previous_start = {
            ["[f"] = { query = "@call.outer", desc = "Prev function call start" },
            ["[m"] = { query = "@function.outer", desc = "Prev method/function def start" },
            ["[c"] = { query = "@class.outer", desc = "Prev class start" },
            ["[i"] = { query = "@conditional.outer", desc = "Prev conditional start" },
            ["[l"] = { query = "@loop.outer", desc = "Prev loop start" },
            ["[a"] = { query = "@parameter.inner", desc = "Previous parameter/argument start" },
            ["[="] = { query = "@assignment.outer", desc = "Previous assignment" },
          },
          goto_previous_end = {
            ["[F"] = { query = "@call.outer", desc = "Prev function call end" },
            ["[M"] = { query = "@function.outer", desc = "Prev method/function def end" },
            ["[C"] = { query = "@class.outer", desc = "Prev class end" },
            ["[I"] = { query = "@conditional.outer", desc = "Prev conditional end" },
            ["[L"] = { query = "@loop.outer", desc = "Prev loop end" },
            ["[A"] = { query = "@parameter.inner", desc = "Previous parameter/argument end" },
          },
        },
      },
    },
    config = function(_, opts)
      require("nvim-treesitter.configs").setup(opts)

      local ts_repeat_move = require("nvim-treesitter.textobjects.repeatable_move")
      vim.keymap.set({ "n", "x", "o" }, ";", ts_repeat_move.repeat_last_move)
      vim.keymap.set({ "n", "x", "o" }, ",", ts_repeat_move.repeat_last_move_opposite)
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter-context",
    version = false,
    keys = {
      {
        "[[",
        function()
          return require("treesitter-context").go_to_context()
        end,
        desc = "Go to context",
      },
    },
    event = { "BufReadPre", "BufNewFile" },
    config = function(_, opts)
      local ctx = require("treesitter-context")
      ctx.setup(opts)

      Snacks.toggle({
        name = "Treesitter Context",
        get = ctx.enabled,
        set = function(state)
          if state then
            ctx.enable()
          else
            ctx.disable()
          end
        end,
      }):map("<leader>eC")

      return {
        mode = "cursor",
        max_lines = 5,
      }
    end,
  },
}
