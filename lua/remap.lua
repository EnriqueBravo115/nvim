vim.g.mapleader = " "
vim.g.maplocalleader = ","
local map = vim.keymap.set

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- TELESCOPE
vim.keymap.set("n", "<leader>lc", "<cmd>:lua require'telescope'.extensions.dap.commands{}<CR>")
vim.keymap.set("n", "<leader>lb", "<cmd>:lua require'telescope'.extensions.dap.list_breakpoints{}<CR>")

-- DADBOD UI
vim.keymap.set("n", "<leader><leader>db", ":tab DBUI<cr>", {})
vim.keymap.set("n", "<leader><leader>dq", ":tabclose<cr>", {})

-- COMMANDS
vim.keymap.set("n", "<leader>e", "<cmd>:NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>m", "<cmd>:MarkdownPreview<CR>")
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
vim.keymap.set("v", "<leader>y", '"+y<CR>')
vim.keymap.set("n", "<leader>zg", "<cmd>term gradle bootRun --debug-jvm<CR>")
