return {
  {
    "tpope/vim-dadbod",
    version = false,
    cmd = { "DB" },
  },
  {
    "kristijanhusak/vim-dadbod-ui",
    version = false,
    cmd = { "DBUI", "DBUIToggle", "DBUIAddConnection", "DBUIFindBuffer" },
    dependencies = {
      "tpope/vim-dadbod",
    },
  },
  {
    "kristijanhusak/vim-dadbod-completion",
    version = false,
    ft = { "sql" },
    dependencies = {
      "tpope/vim-dadbod",
    },
  },
  {
    "blink.cmp",
    opts = {
      sources = {
        default = { "dadbod" },
        providers = {
          dadbod = {
            name = "Dadbod",
            module = "vim_dadbod_completion.blink",
          },
        },
      },
    },
  },
}
