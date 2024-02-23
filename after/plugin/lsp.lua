local lsp = require("lsp-zero")
local cmp = require("cmp")

lsp.preset("recommended")

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("n", "<leader>q", function() vim.lsp.buf.format() end, opts)
end)

lsp.setup()

cmp.setup({
  formatting = {
    fields = { "abbr", "kind", "menu" },
    format = require("lspkind").cmp_format({
      mode = "symbol",
      maxwidth = 40,
      ellipsis_char = "...",
      symbol_map = {
        Value = "󰌋",
        Interface = "",
        Method = "󰊕",
        Class = "",
        Text = "",
        Snippet = "󰕣"
      }
    })
  },

  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_next_item()
      else
        fallback()
      end
    end,
    ["<S-Tab>"] = function(fallback)
      if cmp.visible() then
        cmp.select_prev_item()
      else
        fallback()
      end
    end,
  }),

  window = {
    completion = {
      border = "rounded",
      scrollbar = false,
      winhighlight = "Normal:CmpNormal",
    },
    documentation = {
      border = "rounded",
      col_offset = 0,
      scrollbar = "",
      winhighlight = "Normal:CmpNormal",
    },
  },
})

vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#282a2e" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282a2e" })

vim.api.nvim_set_hl(0, "CmpItemKindFunction", { fg = "#acf2e4" })
vim.api.nvim_set_hl(0, "CmpItemKindMethod", { fg = "#acf2e4" })
vim.api.nvim_set_hl(0, "CmpItemKindClass", { fg = "#ffa14f" })
vim.api.nvim_set_hl(0, "CmpItemKindValue", { fg = "#ff8170" })

vim.diagnostic.config({
  virtual_text = false
})

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]
