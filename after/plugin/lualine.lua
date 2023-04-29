require('lualine').setup {
    options = {
        theme = 'auto',
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
            { 'branch', icon = 'ψ' },
            { 'diff',   symbols = { added = '+', modified = '~', removed = '-' } } },
        lualine_c = { 'filename' },
        lualine_x = { { 'diagnostics' },
            { 'filetype' },
            { 'fileformat', symbols = { unix = '🍲' } } },
        lualine_y = {},
        lualine_z = {}
    },
}
