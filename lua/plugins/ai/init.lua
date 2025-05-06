if vim.g.nvc.ai.enabled then
  return {
    { import = "plugins.ai.mcphub", enabled = vim.g.nvc.ai.mcphub.enabled },
    { import = "plugins.ai.codecompanion", enabled = vim.g.nvc.ai.codecompanion.enabled },
  }
else
  return {}
end
