require('rose-pine').setup({
  variant = 'auto',
  dark_variant = 'main',
  bold_vert_split = false,
  dim_nc_background = false,
  disable_background = true,
  disable_float_background = true,
  disable_italics = true,

  highlight_groups = {
    Number = { fg = '#ff7bbb' },
    GitSignsAdd = { fg = '#9ccfd8' },
    GitSignsChange = { fg = '#e3c78a' },
    GitSignsDelete = { fg = '#eb6f92' }
  }
})

vim.cmd('colorscheme rose-pine')
