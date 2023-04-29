require("catppuccin").setup({
    flavour = "macchiato",     -- latte, frappe, macchiato, mocha
    transparent_background = true,
    show_end_of_buffer = true, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = true, -- Force no italic
    no_bold = true,   -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

require('rose-pine').setup({
    variant = 'auto',
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = true,
    disable_float_background = true,
    disable_italics = true,
    --- @usage string hex value or named color from rosepinetheme.com/palette
    groups = {
        background = 'base',
        background_nc = '_experimental_nc',
        panel = 'surface',
        panel_nc = 'base',
        border = 'highlight_med',
        comment = 'muted',
        link = 'iris',
        punctuation = 'subtle',
        error = 'love',
        hint = 'iris',
        info = 'foam',
        warn = 'gold',
        headings = {
            h1 = 'iris',
            h2 = 'foam',
            h3 = 'rose',
            h4 = 'gold',
            h5 = 'pine',
            h6 = 'foam',
        }
        -- or set all headings at once
        -- headings = 'subtle'
    },
})

-- Default options:
require('kanagawa').setup({
    compile = false,  -- enable compiling the colorscheme
    undercurl = true, -- enable undercurls
    commentStyle = { italic = false },
    keywordStyle = { italic = false },
    statementStyle = { bold = false },
    transparent = true,    -- do not set background color
    dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
    colors = {
        theme = {
            all = {
                ui = {
                    bg_gutter = "none",
                    pmenu = {
                        bg = "none",
                        bg_sel = "#16161D"
                    }
                },
                syn = {
                    identifier = "#938AA9",
                    variable = "#d67ad2",
                    string = "#D27E99",
                    parameter = "#FFA066",
                    operator = "#F2C57C",
                    -- keyword = "#719cd6"
                }
            }
        }
    },
})

vim.cmd("colorscheme kanagawa-wave")

--vim.cmd('hi LineNr ctermbg=NONE guibg=NONE')
-- vim.cmd('hi Normal ctermbg=NONE guibg=NONE')
--vim.cmd('hi SignColumn ctermbg=NONE guibg=NONE')
