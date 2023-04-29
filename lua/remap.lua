vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>e", "<cmd>:NvimTreeToggle<CR>")

vim.keymap.set("n", "<leader><leader>db", ":tab DBUI<cr>", {})
vim.keymap.set("n", "<leader><leader>tq", ":tabclose<cr>", {})

vim.keymap.set("n", "<leader>bd", "<cmd>bw<CR>")
