require('nvim-treesitter.configs').setup({
    rainbow = {
        enable = true,
        disable = { "html", "jsx" },
        extended_mode = true,
        max_file_lines = nil,
    },
})
