local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    "                                                     ",
    "  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
    "  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
    "  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
    "  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
    "  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
    "  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
    "                                                     ",
}

dashboard.section.buttons.val = {
    dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
    dashboard.button("p", "  Plugins", ":e ~/.config/nvim/lua/plugins.lua<CR>"),
    dashboard.button("f", "󰈞  Find file", ":Telescope find_files <CR>"),
    dashboard.button("w", "󰙩  Find text", ":Telescope live_grep <CR>"),
    dashboard.button("r", "  Recently used files", ":Telescope oldfiles <CR>"),
    dashboard.button("q", "󰑮  Quit Neovim", ":qa<CR>"),
}
