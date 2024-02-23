local capabilities = require("cmp_nvim_lsp")
    .default_capabilities(vim.lsp.protocol.make_client_capabilities())

local omnisharp_bin = "/home/nullboy/.local/share/nvim/mason/packages/omnisharp/omnisharp"

require "lspconfig".omnisharp.setup {
  cmd = { omnisharp_bin, "--languageserver" },
  capabilities = capabilities,
  filetypes = { "cs", "vb" },
  enable_editorconfig_support = true,
  enable_ms_build_load_projects_on_demand = false,
  enable_roslyn_analyzers = true,
  organize_imports_on_format = false,
  enable_import_completion = true,
  sdk_include_prereleases = false,
  analyze_open_documents_only = false,
  showCompletionItemsFromUnimportedNamespaces = true
}
