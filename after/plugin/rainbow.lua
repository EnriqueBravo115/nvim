vim.cmd("highlight RainbowDelimiterRed guifg=#21BFC2")
vim.cmd("highlight RainbowDelimiterYellow guifg=#EE64AE")
vim.cmd("highlight RainbowDelimiterBlue guifg=#74b2ff")
vim.cmd("highlight RainbowDelimiterOrange guifg=#fd9353")
vim.cmd("highlight RainbowDelimiterGreen guifg=#36c692")
vim.cmd("highlight RainbowDelimiterViolet guifg=#ae81ff")
vim.cmd("highlight RainbowDelimiterCyan guifg=#79dac8")

require "rainbow-delimiters.setup".setup {
  highlight = {
    "RainbowDelimiterRed",
    "RainbowDelimiterYellow",
    "RainbowDelimiterBlue",
    "RainbowDelimiterOrange",
    "RainbowDelimiterGreen",
    "RainbowDelimiterViolet",
    "RainbowDelimiterCyan",
  },
}
