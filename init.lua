require("plugins")
require("colorscheme")
require("set")
require("remap")

local lspconfig = require('lspconfig')
lspconfig.groovyls.setup {
    cmd = { 'java', '-jar',
        '/home/nullboy/.local/share/nvim/mason/packages/groovy-language-server/build/libs/groovy-language-server-all.jar' },
    filetypes = { 'groovy' }
}
