return {
  {
    "ravitemer/mcphub.nvim",
    version = "6.*",
    build = "npm install -g mcp-hub@latest",
    cmd = { "MCPHub" },
    opts = {},
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
