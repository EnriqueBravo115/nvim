local Colors = {
  white        = '#ffffff',
  darkestgreen = '#005f00',
  brightgreen  = '#afdf00',
  darkestcyan  = '#005f5f',
  mediumcyan   = '#87dfff',
  darkestblue  = '#005f87',
  darkred      = '#870000',
  brightred    = '#df0000',
  brightorange = '#ff8700',
  gray1        = '#262626',
  gray2        = '#303030',
  gray4        = '#585858',
  gray5        = '#606060',
  gray7        = '#9e9e9e',
  gray10       = '#f0f0f0',
  t            = '#00FFFFFF',
  green        = '#06D6A0'
}

local powerline = {
  normal = {
    a = { fg = Colors.darkestgreen, bg = Colors.brightgreen, gui = 'bold' },
    b = { fg = Colors.gray10, bg = Colors.gray5 },
    c = { fg = Colors.gray7, bg = Colors.t },
  },
  insert = { a = { fg = Colors.darkred, bg = Colors.brightorange, gui = 'bold' }, },
  visual = { a = { fg = Colors.darkestcyan, bg = Colors.green, gui = 'bold' } },
  replace = { a = { fg = Colors.white, bg = Colors.green, gui = 'bold' } },
  inactive = {
    a = { fg = Colors.gray1, bg = Colors.t, gui = 'bold' },
    b = { fg = Colors.gray1, bg = Colors.t },
    c = { bg = Colors.t, fg = Colors.gray5 },
  },
}

require('lualine').setup {
  options = {
    theme = powerline,
    component_separators = '',
    section_separators = { left = '', right = '' },
    always_divide_middle = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { { 'mode' } },
    lualine_b = { { 'branch', icon = '󰘬' },
      { 'diff', symbols = { added = '󰋠 ', modified = '󱗜 ', removed = '󰍵 ' } }
    },
    lualine_c = { { 'filename' } },
    lualine_x = {
    },
    lualine_y = {
    },
    lualine_z = {
      { 'location' }
    }
  },
}
