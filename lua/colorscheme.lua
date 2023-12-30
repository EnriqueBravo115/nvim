require('rose-pine').setup({
  variant = 'auto',
  dark_variant = 'main',
  bold_vert_split = false,
  dim_nc_background = false,
  disable_background = true,
  disable_float_background = true,
  disable_italics = true,

  highlight_groups = {
    String = { fg = '#36c692' },
    Number = { fg = '#ff7bbb' }
  }
})

vim.cmd('colorscheme rose-pine')
