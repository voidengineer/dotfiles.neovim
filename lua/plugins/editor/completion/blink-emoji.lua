return {
  {
    "blink.cmp",
    opts = {
      sources = {
        default = { "emoji" },
        providers = {
          emoji = {
            name = "Emoji",
            module = "blink-emoji",
            score_offset = -10,
            opts = {
              insert = true,
            },
          },
        },
      },
    },
    dependencies = {
      "moyiz/blink-emoji.nvim",
    },
  },
}
