return {
  { -- show buffers and tabs
    "akinsho/bufferline.nvim",
    version = "4.*",
    keys = {
      { "<leader>bp", "<Cmd>BufferLineTogglePin<CR>", desc = "Toggle Pin" },
      { "]B", "<Cmd>BufferLineMoveNext<CR>", desc = "Move Right" },
      { "[B", "<Cmd>BufferLineMovePrev<CR>", desc = "Move Left" },
    },
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      options = {
        close_command = function(n)
          Snacks.bufdelete(n)
        end,
        right_mouse_command = function(n)
          Snacks.bufdelete(n)
        end,
        always_show_bufferline = true,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Explorer",
            highlight = "Directory",
            text_align = "left",
          },
        },
      },
    },
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
}
