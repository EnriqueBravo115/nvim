require("nvim-tree").setup({
    view = {
        adaptive_size = true,
    },
    actions = {
        open_file = {
            quit_on_open = true
        }
    },
    filters = {
        dotfiles = false,
    }
})
