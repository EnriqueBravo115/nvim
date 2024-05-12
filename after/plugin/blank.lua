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
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#393e48" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#393e48" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#393e48" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#393e48" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#393e48" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#393e48" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#393e48" })
end)

require("ibl").setup {
  indent = { char = "│", highlight = highlight },
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
