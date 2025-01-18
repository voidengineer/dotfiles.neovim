return {
  {
    "mfussenegger/nvim-lint",
    version = false,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      linters_by_ft = {},
    },
    config = function(_, opts)
      local lint = require("lint")
      lint.linters_by_ft = opts.linters_by_ft

      local lint_augroup = vim.api.nvim_create_augroup("lint", { clear = true })
      vim.api.nvim_create_autocmd({ "BufEnter", "BufWritePost", "InsertLeave" }, {
        group = lint_augroup,
        callback = function()
          lint.try_lint()
        end,
      })
    end,
  },
  {
    "rshkarin/mason-nvim-lint",
    version = false,
    event = { "BufReadPre", "BufNewFile" },
    opts = {
      automatic_installation = true,
    },
    dependencies = {
      "williamboman/mason.nvim",
      "mfussenegger/nvim-lint",
    },
  },
}
