local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
    [[                                                                       ]],
    [[  ██████   █████                   █████   █████  ███                  ]],
    [[ ░░██████ ░░███                   ░░███   ░░███  ░░░                   ]],
    [[  ░███░███ ░███   ██████   ██████  ░███    ░███  ████  █████████████   ]],
    [[  ░███░░███░███  ███░░███ ███░░███ ░███    ░███ ░░███ ░░███░░███░░███  ]],
    [[  ░███ ░░██████ ░███████ ░███ ░███ ░░███   ███   ░███  ░███ ░███ ░███  ]],
    [[  ░███  ░░█████ ░███░░░  ░███ ░███  ░░░█████░    ░███  ░███ ░███ ░███  ]],
    [[  █████  ░░█████░░██████ ░░██████     ░░███      █████ █████░███ █████ ]],
    [[ ░░░░░    ░░░░░  ░░░░░░   ░░░░░░       ░░░      ░░░░░ ░░░░░ ░░░ ░░░░░  ]],
    [[                                                                       ]],
}

dashboard.section.buttons.val = {
    --  dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
    --  dashboard.button("f", "󰈞  Find file", ":Telescope find_files <CR>"),
    --  dashboard.button("w", "󰙩  Find text", ":Telescope live_grep <CR>"),
    dashboard.button("r", "󱓞  Recent files", ":Telescope oldfiles <CR>"),
    dashboard.button("p", "󰉦  Picom", ":e ~/.config/picom.conf<CR>"),
    dashboard.button("c", "  Config", ":e ~/.config/i3/config<CR>"),
    dashboard.button("z", "  Zathura", ":e ~/.config/zathura/zathurarc<CR>"),
    --  dashboard.button("q", "󰑮  Quit Neovim", ":qa<CR>"),
}
