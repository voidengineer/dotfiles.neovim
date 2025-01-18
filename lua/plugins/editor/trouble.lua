return {
  {
    "folke/trouble.nvim",
    version = false,
    cmd = { "Trouble" },
    opts = {
      auto_close = true,
    },
    keys = {
      { "<leader>xc", "<cmd>Trouble close<cr>", desc = "Close Trouble" },
      { "<leader>xd", "<cmd>Trouble diagnostics open<cr>", desc = "Diagnostics" },
      { "<leader>xD", "<cmd>Trouble diagnostics open filter.buf=0<cr>", desc = "Diagnostics (Buffer)" },
      { "<leader>xq", "<cmd>Trouble qflist open<cr>", desc = "Quickfix List" },
      {
        "[q",
        function()
          local t = require("trouble")
          if t.is_open() then
            t.prev({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cprev)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Previous Trouble/Quickfix Item",
      },
      {
        "]q",
        function()
          local t = require("trouble")
          if t.is_open() then
            t.next({ skip_groups = true, jump = true })
          else
            local ok, err = pcall(vim.cmd.cnext)
            if not ok then
              vim.notify(err, vim.log.levels.ERROR)
            end
          end
        end,
        desc = "Next Trouble/Quickfix Item",
      },
    },
  },
}
