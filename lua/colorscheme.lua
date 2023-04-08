-- Default options
require('nightfox').setup({
    options = {
        -- Compiled file's destination location
        compile_path = vim.fn.stdpath("cache") .. "/nightfox",
        compile_file_suffix = "_compiled", -- Compiled file suffix
        transparent = true,                -- Disable setting background
        terminal_colors = true,            -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
        dim_inactive = false,              -- Non focused panes set to alternative background
        module_default = true,             -- Default enable value for modules
        colorblind = {
            enable = true,                 -- Enable colorblind support
            simulate_only = false,         -- Only show simulated colorblind colors and not diff shifted
            severity = {
                protan = 0,                -- Severity [0,1] for protan (red)
                deutan = 0,                -- Severity [0,1] for deutan (green)
                tritan = 0,                -- Severity [0,1] for tritan (blue)
            },
        },
        styles = {
            -- Style to be applied to different syntax groups
            comments = "NONE", -- Value is any valid attr-list value `:help attr-list`
            conditionals = "NONE",
            constants = "NONE",
            functions = "NONE",
            keywords = "NONE",
            numbers = "NONE",
            operators = "NONE",
            strings = "NONE",
            types = "NONE",
            variables = "NONE",
        },
        inverse = {
            -- Inverse highlight for different types
            match_paren = false,
            visual = true,
            search = false,
        },
        modules = { -- List of various plugins and additional options
            -- ...
        },
    },
    palettes = {},
    specs = {},
    groups = {},
})

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    background = {
        -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = true, -- Force no italic
    no_bold = true,   -- Force no bold
    styles = {
        comments = {},
        conditionals = {},
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

-- setup must be called before loading

vim.cmd('colorscheme space-vim-dark')
vim.cmd('hi LineNr ctermbg=NONE guibg=NONE')
vim.cmd('set t_8f= t_8b=')
