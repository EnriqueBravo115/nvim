local lsp = require("lsp-zero")
local capabilities = vim.lsp.protocol.make_client_capabilities()
local pid = vim.fn.getpid()
local omnisharp_bin = "/home/nullboy/.local/share/nvim/mason/packages/omnisharp/omnisharp"


lsp.preset("recommended")

lsp.ensure_installed({
    'tsserver',
    'rust_analyzer',
})

require 'lspconfig'.pylsp.setup {
    settings = {
        pylsp = {
            plugins = {
                pylsp = {
                    jedi_hover = { enabled = false },
                    jedi_references = { enabled = true },
                    jedi_signature_help = { enabled = false },
                },
            }
        }
    }
}

require 'lspconfig'.kotlin_language_server.setup {}

local cmp = require('cmp')
local cmp_select = { behavior = cmp.SelectBehavior.Select }
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<S-tab>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<tab>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'ε',
        warn = 'ω',
        hint = 'ħ',
        info = 'ĩ'
    }
})

vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

lsp.on_attach(function(client, bufnr)
    local opts = { buffer = bufnr, remap = false }

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
    vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
    vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set("n", "<leader>q", function() vim.lsp.buf.format() end, opts)
end)

cmp.setup({
    formatting = {
        fields = { 'abbr', 'kind', 'menu' },
        format = require('lspkind').cmp_format({
            mode = 'symbol',       -- show only symbol annotations
            maxwidth = 50,         -- prevent the popup from showing more than provided characters
            ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
        })
    }
})

lsp.setup()

cmp.setup({
    formatting = {
        fields = { 'abbr', 'kind', 'menu' },
        format = require('lspkind').cmp_format({
            mode = 'symbol',       -- show only symbol annotations
            maxwidth = 50,         -- prevent the popup from showing more than provided characters
            ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead
        })
    }
})

vim.diagnostic.config({
    virtual_text = false
})
