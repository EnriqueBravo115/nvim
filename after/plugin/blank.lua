--vim.g.indent_blankline_char = "|"
vim.g.indent_blankline_use_treesitter = true

require("indent_blankline").setup {
    show_trailing_blankline_indent = false,
}
