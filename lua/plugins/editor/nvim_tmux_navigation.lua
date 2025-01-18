return {
  {
    "alexghergh/nvim-tmux-navigation",
    version = false,
    keys = {
      { "<A-up>", "<cmd>NvimTmuxNavigateUp<cr>" },
      { "<A-down>", "<cmd>NvimTmuxNavigateDown<cr>" },
      { "<A-left>", "<cmd>NvimTmuxNavigateLeft<cr>" },
      { "<A-right>", "<cmd>NvimTmuxNavigateRight<cr>" },
    },
    opts = {
      disable_when_zoomed = true,
    },
  },
}
