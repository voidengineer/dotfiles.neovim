local g = vim.g

g.loaded_netrw = 1
g.loaded_netrwPlugin = 1

local o = vim.opt

o.termguicolors = true
o.laststatus = 3

o.nu = true
o.relativenumber = true
o.list = true

o.tabstop = 4
o.softtabstop = 3
o.shiftwidth = 4
o.expandtab = true
o.smartindent = true

o.wrap = false

o.swapfile = false
o.backup = false
o.undodir = os.getenv("HOME") .. "/.vim/undodir"
o.undofile = true

o.hlsearch = false
o.incsearch = true

o.scrolloff = 8

o.signcolumn = "yes"
o.colorcolumn = "160"
o.isfname:append("@-@")

o.updatetime = 50

o.foldcolumn = "auto"
o.foldlevelstart = 4
