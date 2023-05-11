vim.g.mapleader = " "
vim.g.maplocalleader = ","

vim.keymap.set("n", "<leader>e", "<cmd>:NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>cc", "<cmd>:Telescope flutter commands<CR>")
vim.keymap.set("n", "<leader>lb", "<cmd>:lua require'telescope'.extensions.dap.list_breakpoints{}<CR>")
vim.keymap.set("n", "<leader>lc", "<cmd>:lua require'telescope'.extensions.dap.commands{}<CR>")

vim.keymap.set("n", "<leader><leader>db", ":tab DBUI<cr>", {})
vim.keymap.set("n", "<leader><leader>dq", ":tabclose<cr>", {})

vim.keymap.set("n", "<leader>bd", "<cmd>bw<CR>")
