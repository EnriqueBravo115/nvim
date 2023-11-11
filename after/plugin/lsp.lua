local lsp = require("lsp-zero")

local capabilities = require('cmp_nvim_lsp')
    .default_capabilities(vim.lsp.protocol.make_client_capabilities())

vim.api.nvim_set_hl(0, "CmpNormal", { bg = "#303030" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#303030" })

lsp.preset("recommended")

local cmp = require('cmp')

cmp.setup({
  mapping = cmp.mapping.preset.insert({
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ['<C-Space>'] = cmp.mapping.complete(),
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
    completion = { -- rounded border; thin-style scrollbar
      border = 'rounded',
      scrollbar = false,
      winhighlight = "Normal:CmpNormal",
    },
    documentation = { -- no border; native-style scrollbar
      border = 'rounded',
      col_offset = 0,
      scrollbar = '',
      winhighlight = "Normal:CmpNormal",
    },
  },
})

local omnisharp_bin = "/home/nullboy/.local/share/nvim/mason/packages/omnisharp/omnisharp"

require 'lspconfig'.omnisharp.setup {
  cmd = { omnisharp_bin, "--languageserver" },
  capabilities = capabilities,
  filetypes = { "cs", "vb" },
  enable_editorconfig_support = true,
  enable_ms_build_load_projects_on_demand = false,
  enable_roslyn_analyzers = false,
  organize_imports_on_format = false,
  enable_import_completion = true,
  sdk_include_prereleases = false,
  analyze_open_documents_only = false,
}

lsp.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }
  vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
  vim.keymap.set("n", "<leader>q", function() vim.lsp.buf.format() end, opts)
end)

lsp.setup()

cmp.setup({
  formatting = {
    fields = { 'abbr', 'kind', 'menu' },
    format = require('lspkind').cmp_format({
      mode = 'symbol',
      maxwidth = 30,
      ellipsis_char = '...',
      symbol_map = {
        Value = "󰌋",
        Interface = "",
        Method = "󰊕",
        Class = "",
        Text = "",
        Snippet = "󰕣"
      }
    })
  }
})

vim.diagnostic.config({
  virtual_text = false
})

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

vim.api.nvim_exec(
  [[
      autocmd FileType sql setlocal omnifunc=vim_dadbod_completion#omni
      autocmd FileType sql,mysql,plsql lua require('cmp').setup.buffer({ sources = {{ name = 'vim-dadbod-completion' }} })
  ]],
  false
)
