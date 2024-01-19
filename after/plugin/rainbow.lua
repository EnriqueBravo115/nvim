local rainbow_delimiters = require 'rainbow-delimiters'

vim.cmd("highlight RainbowDelimiterRed guifg=#eb6f92")
vim.cmd("highlight RainbowDelimiterYellow guifg=#ea9d34")
vim.cmd("highlight RainbowDelimiterBlue guifg=#ae81ff")
vim.cmd("highlight RainbowDelimiterOrange guifg=#38618C")

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
