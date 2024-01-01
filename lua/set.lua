vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.showmode = false

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

vim.opt.conceallevel = 2

vim.cmd("set concealcursor=nc")

vim.opt.colorcolumn = "80"

vim.cmd("highlight ColorColumn guibg=#333333")

vim.cmd("hi EndOfBuffer guibg=#0f0a01 guifg=#0f0a01")

vim.cmd("let g:powerline_loaded = 1")
