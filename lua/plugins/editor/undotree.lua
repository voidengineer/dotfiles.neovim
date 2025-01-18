return {
  {
    "mbbill/undotree",
    version = false,
    keys = {
      { "<C-u>", "<cmd>UndotreeShow<cr> <cmd>UndotreeFocus<cr>", desc = "Open UndoTree" },
      { "<A-u>", "<cmd>UndotreeToggle<cr>", desc = "Toggle UndoTree" },
    },
    init = function()
      vim.g.undotree_WindowLayout = 4
    end,
  },
}
