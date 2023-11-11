vim.cmd("set linebreak")
vim.cmd("set nocompatible")
vim.cmd("filetype plugin on")
vim.cmd("syntax on")

vim.cmd("autocmd FileType vimwiki set norelativenumber")
vim.cmd("autocmd FileType vimwiki set nonumber")

vim.cmd("hi VimwikiBold term=bold ctermfg=Cyan guifg=#FF7EB6 gui=bold")
vim.cmd("hi VimwikiItalic term=italic ctermfg=Red guifg=#BE95FF gui=italic")
vim.cmd("hi VimwikiCode term=italic ctermfg=Red guifg=#ffa14f")
vim.cmd("hi VimwikiLink term=italic ctermfg=Red guifg=#dabaff")

vim.cmd("hi VimwikiHeader1 guifg=#afff00 gui=bold")
vim.cmd("hi VimwikiHeader2 guifg=#78c2b3")
vim.cmd("hi VimwikiHeader3 guifg=#98BB6C")
vim.cmd("hi VimwikiHeader4 guifg=#938AA9")
