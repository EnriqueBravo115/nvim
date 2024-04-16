require('onedark').setup {
  style = 'dark',                                                                      -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
  transparent = true,                                                                  -- Show/hide background
  term_colors = true,                                                                  -- Change terminal color as per the selected theme style
  ending_tildes = false,                                                               -- Show the end-of-buffer tildes. By default they are hidden
  cmp_itemkind_reverse = false,                                                        -- reverse item kind highlights in cmp menu
  toggle_style_key = nil,                                                              -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
  toggle_style_list = { 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer', 'light' }, -- List of styles to toggle between

  code_style = {
    comments = 'italic',
    keywords = 'none',
    functions = 'none',
    strings = 'none',
    variables = 'none'
  },
  lualine = {
    transparent = true,
  },
  colors = {},
  highlights = {},
  diagnostics = {
    darker = true,
    undercurl = true,
    background = false,
  },
}

vim.cmd("colorscheme onedark")
