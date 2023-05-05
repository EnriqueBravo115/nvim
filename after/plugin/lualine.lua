-- stylua: ignore
local colors = {
    blue   = '#80a0ff',
    cyan   = '#79dac8',
    black  = '#1F1F28',
    white  = '#C8C093',
    red    = '#ff5189',
    violet = '#d183e8',
    grey   = '#363646',
    k1     = '#2A2A37',
    k2     = '#F6AE2D',
    k3     = '#98BB6C',
    k4     = '#957FB8'
}

local bubbles_theme = {
    normal = {
        a = { fg = colors.black, bg = colors.k2 },
        b = { fg = colors.white, bg = colors.grey },
        c = { fg = colors.k4, bg = colors.k1 },
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
        section_separators = { left = '', right = '' },
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
            { 'branch', icon = '󰊢' },
            { 'diff',   symbols = { added = ' ', modified = ' ', removed = ' ' } } },
        lualine_c = { { 'filename' }, },
        lualine_x = {
            { 'filetype',   icon_only = false },
            { 'diagnostics' },
            { 'fileformat', symbols = { unix = '' } },
            { 'location' },
        },
        lualine_y = {},
        lualine_z = {}
    },
}
