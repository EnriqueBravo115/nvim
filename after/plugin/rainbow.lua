local rainbow_delimiters = require 'rainbow-delimiters'

vim.cmd("highlight RainbowDelimiterRed guifg=#ff4ea3")
vim.cmd("highlight RainbowDelimiterYellow guifg=#ffd700")
vim.cmd("highlight RainbowDelimiterBlue guifg=#87ffff")

vim.g.rainbow_delimiters = {
  highlight = {
    'RainbowDelimiterRed',
    'RainbowDelimiterYellow',
    'RainbowDelimiterBlue',
    'RainbowDelimiterOrange',
    'RainbowDelimiterGreen',
    'RainbowDelimiterViolet',
    'RainbowDelimiterCyan',
  },
}
