local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local lazy = require("lazy")
lazy.setup("plugins", {
  checker = {
    enabled = true,
    notify = true,
  },
})

vim.keymap.set("n", "<leader>LI", lazy.install, { desc = "Install new plugins" })
vim.keymap.set("n", "<leader>LU", lazy.update, { desc = "Update plugins" })
vim.keymap.set("n", "<leader>LS", lazy.sync, { desc = "Sync plugins" })
vim.keymap.set("n", "<leader>LX", lazy.clean, { desc = "Clean plugins" })
