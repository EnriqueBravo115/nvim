require("solarized-osaka").setup({
  transparent = true,
  styles = {
    comments = { italic = true },
    keywords = { italic = false },
    functions = {fg = "#5856b9"},
    variables = { italic = false },
    -- Background styles. Can be "dark", "transparent" or "normal"
    sidebars = "transparent",
    floats = "transparent",
  },
})

vim.cmd("colorscheme solarized-osaka-moon")
