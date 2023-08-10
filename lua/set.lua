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

vim.opt.conceallevel = 2

vim.cmd("let g:indent_blankline_filetype_exclude = ['norg']")

vim.opt.colorcolumn = "80"

vim.cmd("highlight ColorColumn guibg=#282a3e")

vim.cmd("highlight NvimTreeFolderIcon guifg=#EF798A")
vim.cmd("highlight NvimTreeIndentMarker guifg=#FCAB10")
vim.cmd("highlight NvimTreeNormal guibg=#292a30")

vim.cmd("highlight NvimTreeEndOfBuffer guifg=#292a30")

vim.cmd("highlight NvimTreeCursorColumn guifg=#292a30")
vim.cmd("highlight NvimTreeWinSeparator guifg=#292a30")
vim.cmd("let g:powerline_loaded = 1")

vim.cmd("hi EndOfBuffer guibg=#292a30 guifg=#292a30")
