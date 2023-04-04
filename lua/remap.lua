vim.g.mapleader = " "
vim.keymap.set('n', '<leader>e', '<cmd>:NvimTreeToggle<CR>')
vim.keymap.set("n", "<leader>fml", "<cmd>CellularAutomaton make_it_rain<CR>")

vim.keymap.set("n", "<leader><leader>db", ":tab DBUI<cr>", {})
vim.keymap.set("n", "<leader><leader>tq", ":tabclose<cr>", {})
