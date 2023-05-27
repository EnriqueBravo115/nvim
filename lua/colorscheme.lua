-- Default options:
--require('kanagawa').setup({
--    compile = false,  -- enable compiling the colorscheme
--    undercurl = true, -- enable undercurls
--    commentStyle = { italic = false },
--    keywordStyle = { italic = false },
--    statementStyle = { bold = false },
--    transparent = true,    -- do not set background color
--    dimInactive = false,   -- dim inactive window `:h hl-NormalNC`
--    terminalColors = true, -- define vim.g.terminal_color_{0,17}
--    colors = {
--        theme = {
--            all = {
--                ui = {
--                    bg_gutter = "none",
--                    pmenu = {
--                        bg = "none",
--                        bg_sel = "#16161D"
--                    }
--                },
--                syn = {
--                    identifier = "#938AA9",
--                    variable = "#d67ad2",
--                    string = "#D27E99",
--                    parameter = "#FFA066",
--                    operator = "#F2C57C",
--                    -- keyword = "#719cd6"
--                }
--            }
--        }
--    },
--})

require('rose-pine').setup({
    --- @usage 'auto'|'main'|'moon'|'dawn'
    variant = 'auto',
    dark_variant = 'main',
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = true,
    disable_float_background = true,
    disable_italics = true,
})

vim.cmd("colorscheme rose-pine")
