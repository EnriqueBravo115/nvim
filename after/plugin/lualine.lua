-- stylua: ignore
local colors = {
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    black  = '#1F1F28',
    white  = '#06D6A0',
    red    = '#ff5189',
    violet = '#EF476F',
    grey   = '#254147',
    k1     = '#44475A',
    k2     = '#FFD166',
    k3     = '#06D6A0',
    k4     = '#44475A',
    k5     = '#a9a1e1',
    line   = '#392B58'
}

local bubbles_theme = {
    normal = {
        a = { fg = colors.black, bg = colors.k2 },
        b = { fg = colors.white, bg = colors.k4 },
        c = { fg = colors.k5, bg = colors.k1 },
    },
    insert = { a = { fg = colors.black, bg = colors.k3 } },
    visual = { a = { fg = colors.black, bg = colors.violet } },
    replace = { a = { fg = colors.black, bg = colors.red } },
    inactive = {
        a = { fg = colors.k4, bg = colors.k1 },
        b = { fg = colors.k4, bg = colors.k1 },
        c = { fg = colors.k4, bg = colors.k1 },
    },
}

require('lualine').setup {
    options = {
        theme = bubbles_theme,
        component_separators = '',
        section_separators = { left = '', right = '' },
        always_divide_middle = false,
        refresh = {
            statusline = 1000,
            tabline = 1000,
            winbar = 1000,
        }
    },
    sections = {
        lualine_a = { { 'mode', icon = '' } },
        lualine_b = {
            { 'branch', icon = '󰘬' },
            { 'diff',   symbols = { added = '+', modified = '~', removed = '-' } } },
        lualine_c = { { 'filename' }, },
        lualine_x = {
            { 'location' }, {
            'fileformat',
            symbols = {
                unix = ' ' }
        }
        },
        lualine_y = {},
        lualine_z = {}
    },
}
