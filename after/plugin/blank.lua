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
