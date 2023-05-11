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

require('nightfox').setup({
    options = {
        transparent = true,
        terminal_colors = true,
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
            match_paren = false,
            visual = true,
            search = true,
        },
    },
})

-- setup must be called before loading the colorscheme
-- Default options:
require("gruvbox").setup({
    undercurl = true,
    underline = true,
    bold = true,
    italic = {
        strings = false,
        comments = false,
        operators = false,
        folds = true,
    },
    strikethrough = true,
    invert_selection = true,
    invert_signs = false,
    invert_tabline = false,
    invert_intend_guides = false,
    inverse = true, -- invert background for search, diffs, statuslines and errors
    contrast = "",  -- can be "hard", "soft" or empty string
    palette_overrides = {},
    overrides = {},
    dim_inactive = false,
    transparent_mode = false,
})

vim.cmd("colorscheme terafox")

--vim.cmd('hi LineNr ctermbg=NONE guibg=NONE')
--vim.cmd('hi Normal ctermbg=NONE guibg=NONE')
--vim.cmd('hi SignColumn ctermbg=NONE guibg=NONE')
