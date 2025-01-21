return {
  { -- lots of useful helpers
    "folke/snacks.nvim",
    version = "2.*",
    priority = 1000,
    lazy = false,
    keys = {
      {
        "<leader>gg",
        function()
          Snacks.lazygit()
        end,
        desc = "Lazygit",
      },
      {
        "<leader>gf",
        function()
          Snacks.lazygit.log_file()
        end,
        desc = "Current File History",
      },
      {
        "<leader>gl",
        function()
          Snacks.lazygit.log()
        end,
        desc = "History (cwd)",
      },
      {
        "<leader>gB",
        function()
          Snacks.gitbrowse()
        end,
        desc = "Browse",
        mode = { "n", "v" },
      },
      {
        "<leader>gb",
        function()
          Snacks.git.blame_line()
        end,
        desc = "Blame Line",
      },
      {
        "<leader>nh",
        function()
          Snacks.notifier.hide()
        end,
        desc = "Hide All",
      },
      {
        "<leader>nl",
        function()
          Snacks.notifier.show_history()
        end,
        desc = "Show History",
      },
      {
        "<leader>z",
        function()
          Snacks.zen()
        end,
        desc = "Toggle Zen Mode",
      },
      {
        "<leader>Z",
        function()
          Snacks.zen.zoom()
        end,
        desc = "Toogle Zoom",
      },
      {
        "<leader>_",
        function()
          Snacks.terminal()
        end,
        desc = "Terminal",
      },
      {
        "]]",
        function()
          Snacks.words.jump(vim.v.count1)
        end,
        desc = "Next Reference",
        mode = { "n", "t" },
      },
      {
        "[[",
        function()
          Snacks.words.jump(-vim.v.count1)
        end,
        desc = "Prev Reference",
        mode = { "n", "t" },
      },
    },
    opts = {
      dashboard = {
        enabled = true,
        example = "advanced",
      },
      statuscolumn = { enabled = true },
      notifier = { enabled = true },
      input = { enabled = true },
      indent = { enabled = true },
      scroll = { enabled = true },
      scope = { enabled = true },
      bigfile = { enabled = true },
      quickfile = { enabled = true },
    },
    init = function()
      vim.api.nvim_create_autocmd("User", {
        pattern = "VeryLazy",
        callback = function()
          Snacks.toggle.line_number():map("<leader>el")
          Snacks.toggle.option("relativenumber", { name = "Relative Number" }):map("<leader>eL")
          Snacks.toggle.option("wrap", { name = "Line Wrapping" }):map("<leader>ew")
          Snacks.toggle.indent():map("<leader>ei")
          Snacks.toggle.dim():map("<leader>ed")
          Snacks.toggle.inlay_hints():map("<leader>eh")
          Snacks.toggle.option("background", { off = "light", on = "dark", name = "Dark Background" }):map("<leader>eb")
          Snacks.toggle.diagnostics():map("<leader>eD")
          Snacks.toggle.treesitter():map("<leader>eT")
        end,
      })
    end,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
}
