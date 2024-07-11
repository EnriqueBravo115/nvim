local opts = { noremap = true, silent = true }
local builtin = require("telescope.builtin")

vim.keymap.set("n", "<leader>ff",
  "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_ivy({previewer=false}))<cr>",
  opts)

vim.keymap.set("n", "<leader>bf",
  "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_ivy({previewer=false}))<cr>", opts)

vim.keymap.set('n', '<leader>fo',
  "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_ivy({previewer=false}))<cr>",
  opts
)

vim.keymap.set("n", "<leader>fs", function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)

vim.keymap.set("n", "<leader>w", function()
  local word = vim.fn.expand("<cword>")
  builtin.grep_string({ search = word })
end)
