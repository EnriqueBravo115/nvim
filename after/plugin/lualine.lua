require("lualine").setup {
  options = {
    theme = "auto",
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
    lualine_a = { { "mode", icons_enabled = true, icon = "" } },
    lualine_b = { { "branch", icon = "󰘬" },
      { "diff", symbols = { added = "󰋠 ", modified = "󱗜 ", removed = "󰍵 " } }
    },
    lualine_c = { { "filename" } },
    lualine_x = {
      "diagnostics"
    },
    lualine_y = {
      { "fileformat", symbols = { unix = " " } }
    },
    lualine_z = {
      { "location" }
    }
  },
}
