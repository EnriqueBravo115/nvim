vim.cmd("autocmd FileType vimwiki set norelativenumber")
vim.cmd("autocmd FileType vimwiki set nonumber")

vim.cmd("hi VimwikiBold term=bold ctermfg=Cyan guifg=#FF7EB6 gui=bold")
vim.cmd("hi VimwikiItalic term=italic ctermfg=Cyan guifg=#BE95FF gui=italic")
vim.cmd("hi VimwikiCode term=italic ctermfg=Red guifg=#FF7EB6")
vim.cmd("hi VimwikiLink term=underline ctermfg=Red guifg=#ff5874")

vim.cmd("hi VimwikiHeader1 guifg=#afff00 gui=bold")
vim.cmd("hi VimwikiHeader2 guifg=#87ffff gui=bold")
vim.cmd("hi VimwikiHeader3 guifg=#98BB6C gui=bold")
vim.cmd("hi VimwikiHeader4 guifg=#938AA9 gui=bold")
