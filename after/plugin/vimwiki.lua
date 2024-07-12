--vim.cmd("autocmd FileType vimwiki set norelativenumber")
--vim.cmd("autocmd FileType vimwiki set nonumber")
vim.g.vimwiki_list = {
    { path = '/home/nullboy/Documents/notes/' }
}

vim.cmd("hi VimwikiBold guifg=#E76D83 gui=bold")
vim.cmd("hi VimwikiItalic guifg=#ae81ff gui=italic")
vim.cmd("hi VimwikiCode guifg=#36c692")
vim.cmd("hi VimwikiLink guifg=#78c2b3 gui=underline")
vim.cmd("hi VimwikiList guifg=#fd9353")

vim.cmd("hi VimwikiHeader1 guifg=#afff00 gui=bold")
vim.cmd("hi VimwikiHeader2 guifg=#87ffff gui=bold")
vim.cmd("hi VimwikiHeader3 guifg=#98BB6C gui=bold")
vim.cmd("hi VimwikiHeader4 guifg=#938AA9 gui=bold")
