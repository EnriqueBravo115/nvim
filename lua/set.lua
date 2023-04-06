vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.showmode = false


vim.opt.compatible = false
vim.cmd('filetype plugin on')
vim.cmd('syntax on')

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

-- Modo normal
vim.cmd('highlight CursorNormal guibg=red')

-- Modo insertar
vim.cmd('highlight CursorInsert guibg=green')

-- Modo visual
vim.cmd('highlight CursorVisual guibg=blue')
