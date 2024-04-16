require("barbecue").setup({
  show_dirname = false,
  show_basename = true,
  symbols = {
    separator = "▸",
  },
  kinds = {
    Constructor = "󱥊",
    Method = "󰊕",
    Function = "󰊕",
    Key = " ",
    String = " "
  },
  theme = {
    basename = { bold = false },
    separator = { fg = "#FEA82F" },
    context_class = { fg = "#E76D83" }
  }
})
