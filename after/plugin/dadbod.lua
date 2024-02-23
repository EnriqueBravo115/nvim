_G.dbs = {
  { name = "dev",     url = "postgres://postgres:mypassword@localhost:5432/my-dev-db" },
  { name = "staging", url = "postgres://postgres:mypassword@localhost:5432/my-staging-db" },
  { name = "wp",      url = "mysql://root@localhost/wp_awesome" }
}

vim.api.nvim_exec(
  [[
      autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni
      autocmd FileType sql,mysql,plsql lua require("cmp").setup.buffer({ sources = {{ name = "vim-dadbod-completion" }} })
  ]],
  false
)
