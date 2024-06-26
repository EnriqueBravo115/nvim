require("gitsigns").setup {
  signs = {
    add          = { text = "│" },
    change       = { text = "│" },
    delete       = { text = "│" },
    topdelete    = { text = "-" },
    changedelete = { text = "~" },
    untracked    = { text = "?" },
  },
}

vim.cmd("highlight GitSignsAdd guibg=NONE guifg=#29D398")
vim.cmd("highlight GitSignsChange guibg=NONE guifg=#F09483")
vim.cmd("highlight GitSignsChangedelete guibg=NONE guifg=#F09483")
vim.cmd("highlight GitSignsDelete guibg=NONE guifg=#ff5189")
vim.cmd("highlight GitSignsTopdelete guibg=NONE guifg=#ff5189")
