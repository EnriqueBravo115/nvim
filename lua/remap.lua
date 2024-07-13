vim.g.mapleader = " "
vim.g.maplocalleader = ","
local map = vim.keymap.set
local jdtls = require("jdtls")
local set = vim.keymap.set

-- TELESCOPE
vim.keymap.set("n", "<leader>lc", "<cmd>:lua require'telescope'.extensions.dap.commands{}<CR>")

-- DADBOD UI
vim.keymap.set("n", "<leader><leader>db", ":tab DBUI<cr>", {})
vim.keymap.set("n", "<leader><leader>dq", ":tabclose<cr>", {})

-- COMMANDS
vim.keymap.set("n", "<leader>e", "<cmd>:NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>u", ":UndotreeToggle<CR>")
vim.keymap.set("v", "<leader>y", '"+y<CR>')
vim.keymap.set("n", "<C-p>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-q>", "<cmd>cprev<CR>zz")

vim.keymap.set("n", "<leader>m", "<cmd>:MarkdownPreview<CR>")

vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

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

-- DAP java
set("n", "<leader>df", function()
  if vim.bo.modified then
    vim.cmd("w")
  end
  jdtls.test_class()
end, opts)

set("n", "<leader>dn", function()
  if vim.bo.modified then
    vim.cmd("w")
  end
  jdtls.test_nearest_method({
    config_overrides = {
      stepFilters = {
        skipClasses = { "$JDK", "junit.*" },
        skipSynthetics = true
      }
    }
  })
end, opts)
