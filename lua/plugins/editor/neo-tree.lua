return {
  { -- file explorer (and more)
    "nvim-neo-tree/neo-tree.nvim",
    version = "3.*",
    lazy = false,
    cmd = "Neotree",
    keys = {
      {
        "<C-x>",
        function()
          require("neo-tree.command").execute({ source = "filesystem", reveal = true, position = "left" })
        end,
        desc = "Explorer",
      },
      {
        "<A-x>",
        function()
          require("neo-tree.command").execute({ source = "filesystem", toggle = true })
        end,
        desc = "Explorer",
      },
      {
        "<leader>ge",
        function()
          require("neo-tree.command").execute({ source = "git_status", reveal = true, position = "left" })
        end,
        desc = "Explorer",
      },
      {
        "<leader>be",
        function()
          require("neo-tree.command").execute({ source = "buffers", reveal = true, position = "float" })
        end,
        desc = "Explorer",
      },
    },
    opts = function()
      -- lazygit integration
      vim.api.nvim_create_autocmd("TermClose", {
        pattern = "lazygit",
        callback = function()
          if package.loaded["neo-tree.sources.git_status"] then
            require("neo-tree.sources.git_status").refresh()
          end
        end,
      })

      return {
        event_handlers = {
          {
            event = "file_open_requested",
            handler = function()
              require("neo-tree.command").execute({ action = "close" })
            end,
          },
        },
      }
    end,
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
  },
  { -- snacks.rename integration
    "neo-tree.nvim",
    optional = true,
    opts = function(_, opts)
      local function on_move(data)
        Snacks.rename.on_rename_file(data.source, data.destination)
      end
      local events = require("neo-tree.events")
      opts.event_handlers = opts.event_handlers or {}
      vim.list_extend(opts.event_handlers, {
        { event = events.FILE_MOVED, handler = on_move },
        { event = events.FILE_RENAMED, handler = on_move },
      })
    end,
    dependencies = {
      "folke/snacks.nvim",
    },
  },
}
