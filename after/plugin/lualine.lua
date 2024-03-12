local Colors = {
  violet       = "#afdf00",
  black        = "#000000",
  brightorange = "#ff8800",
  gray1        = "#262626",
  gray5        = "#2c2c2c",
  gray7        = "#9e9e9e",
  gray10       = "#f0f0f0",
  t            = "#00FFFFFF",
  green        = "#9147D6",
  pine         = "#DA2D52",
  foam         = "#9ccfd8",
}

local powerline = {
  normal = {
    a = { fg = Colors.black, bg = Colors.violet, gui = "bold" },
    b = { fg = Colors.gray10, bg = Colors.gray5 },
    c = { fg = Colors.gray7, bg = Colors.t },
  },
  insert = { a = { fg = Colors.black, bg = Colors.brightorange, gui = "bold" }, },
  visual = { a = { fg = Colors.black, bg = Colors.green, gui = "bold" } },
  command = { a = { fg = Colors.black, bg = Colors.pine, gui = "bold" } },
  inactive = {
    a = { fg = Colors.gray1, bg = Colors.t, gui = "bold" },
    b = { fg = Colors.gray1, bg = Colors.t },
    c = { bg = Colors.t, fg = Colors.gray5 },
  },
}

require("lualine").setup {
  options = {
    theme = powerline,
    component_separators = "",
    section_separators = { left = "", right = "" },
    always_divide_middle = false,
    refresh = {
      statusline = 1000,
      tabline = 1000,
      winbar = 1000,
    }
  },
  sections = {
    lualine_a = { { "mode", icons_enabled = false } },
    lualine_b = { { "branch", icon = "󰘬" },
      { "diff", symbols = { added = "󰋠 ", modified = "󱗜 ", removed = "󰍵 " } }
    },
    lualine_c = { { "filename" } },
    lualine_x = {
      "diagnostics"
    },
    lualine_y = {
    },
    lualine_z = {
      { "location" }
    }
  },
}
