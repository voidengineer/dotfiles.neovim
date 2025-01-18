return {
  {
    "folke/persistence.nvim",
    version = "3.*",
    keys = {
      {
        "<leader>qs",
        function()
          require("persistence").load()
        end,
        desc = "Restore Session",
      },
      {
        "<leader>qS",
        function()
          require("persistence").select()
        end,
        desc = "Select Session",
      },
      {
        "<leader>ql",
        function()
          require("persistence").load({ last = true })
        end,
        desc = "Restore Last Session",
      },
      {
        "<leader>qd",
        function()
          require("persistence").stop()
        end,
        desc = "Don't Save Current Session",
      },
    },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      dir = vim.fn.stdpath("state") .. "/sessions/",
      need = 0,
    },
  },
}
