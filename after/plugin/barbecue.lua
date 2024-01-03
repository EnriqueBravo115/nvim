require("barbecue").setup({
  show_dirname = false,
  show_basename = true,
  exclude_filetypes = { "vimwiki" },
  symbols = {
    separator = "▸",
  },
  kinds = {
    Constructor = '󱥊',
    Method = '󰊕',
    Function = '󰊕',
    Key = ' ',
    String = ' '
  },
  theme = {
    basename = { bold = false },
    separator = { fg = "#FEA82F" },
    context_class = { fg = "#E76D83" }
  }
})
