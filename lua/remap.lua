vim.g.mapleader = " "
vim.g.maplocalleader = ","
local map = vim.keymap.set

-- TELESCOPE
vim.keymap.set("n", "<leader>lc", "<cmd>:lua require'telescope'.extensions.dap.commands{}<CR>")

-- DADBOD UI
vim.keymap.set("n", "<leader><leader>db", ":tab DBUI<cr>", {})
vim.keymap.set("n", "<leader><leader>dq", ":tabclose<cr>", {})

-- COMMANDS
vim.keymap.set("n", "<leader>e", "<cmd>:NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
vim.keymap.set("v", "<leader>y", '"+y<CR>')

vim.api.nvim_exec([[
  tnoremap <esc><esc> <C-\><C-n>:wincmd w<CR>
]], false)

-- DAP
map("n", "<leader>as", vim.diagnostic.setloclist)

map("n", "<leader>dc", function()
  require("dap").continue()
end)
map("n", "<leader>dt", function()
  require("dap").toggle_breakpoint()
end)
map("n", "<leader>dso", function()
  require("dap").step_over()
end)
map("n", "<leader>dsi", function()
  require("dap").step_into()
end)
map("n", "<leader>dr", function()
  require("dap").repl.toggle()
end)
