require("ibl").setup {
  indent = { char = "│"},
  whitespace = {
    remove_blankline_trail = true,
  },
  scope = {
    enabled = false,
  },
  exclude = {
    filetypes = {
      "vimwiki",
    }
  }
}
