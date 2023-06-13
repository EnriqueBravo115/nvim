require("gruvbox").setup({
	undercurl = true,
	underline = true,
	bold = false,
	italic = {
		strings = false,
		comments = false,
		operators = false,
		folds = false,
	},
	strikethrough = true,
	invert_selection = true,
	invert_signs = false,
	invert_tabline = false,
	invert_intend_guides = false,
	inverse = true, -- invert background for search, diffs, statuslines and errors
	contrast = "", -- can be "hard", "soft" or empty string
	palette_overrides = {},
	overrides = {},
	dim_inactive = false,
	transparent_mode = true,
})

require("onedarkpro").setup({
	options = {
		transparency = true
	}
})

vim.cmd("colorscheme onedark")
