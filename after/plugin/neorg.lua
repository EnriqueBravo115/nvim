require('neorg').setup {
    load = {
        ["core.defaults"] = {}, -- Loads default behaviour
        ["core.concealer"] = {
            config = {
                icons = {
                    heading = {
                        icons = { "✣", "○", "●", "⊚", "⊙" },
                    },
                    code_block = {
                        conceal = false
                    }
                }
            }
        },
        ["core.dirman"] = {
            config = {
                workspaces = {
                    notes = "~/Documents/personal/notes/",
                },
                default_workspace = "notes"
            },
        },
    },
}
