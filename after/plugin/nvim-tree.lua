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
        dotfiles = true,
    },
    renderer = {
        icons = {
            glyphs = {
                folder = {
                    arrow_closed = "",
                    arrow_open = "",
                    default = "",
                    open = "",
                },
                git = {
                    staged = "",
                    untracked = "󰊠",
                    unstaged = ""
                }
            }
        }
    }
})
