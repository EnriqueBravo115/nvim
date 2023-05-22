vim.opt.guicursor = ""
vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
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

vim.opt.colorcolumn = "80"
vim.cmd("set nocompatible")
vim.cmd("filetype plugin on")
vim.cmd("syntax on")

vim.cmd("hi VimwikiBold term=bold ctermfg=Cyan guifg=#E54B4B gui=bold")
vim.cmd("hi VimwikiItalic term=italic ctermfg=Red guifg=#EF8A17 gui=italic")

vim.cmd("hi VimwikiHeader1 guifg=#008148")
vim.cmd("hi VimwikiHeader2 guifg=#FFA066")
vim.cmd("hi VimwikiHeader3 guifg=#98BB6C")
vim.cmd("hi VimwikiHeader4 guifg=#938AA9")
