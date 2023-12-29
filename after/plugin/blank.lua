local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

local hooks = require "ibl.hooks"

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#002731" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#002731" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#002731" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#002731" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#002731" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#002731" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#002731" })
end)

require("ibl").setup {
  indent = { char = "│" },
  whitespace = {
    remove_blankline_trail = true,
  },
  scope = { enabled = false },
  exclude = {
    filetypes = {
      "vimwiki",
    }
  }
}

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
