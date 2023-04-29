local home = os.getenv('HOME')
local jdtls = require('jdtls')

local root_markers = { 'gradlew', 'mvnw', '.git' }
local root_dir = require('jdtls.setup').find_root(root_markers)

local workspace_folder = home .. "/.cache/jdtls/workspace" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local config = {
    flags = {
        debounce_text_changes = 80,
    },
    root_dir = root_dir,
    settings = {
        java = {
            format = {
                settings = {
                    url = "/home/nullboy/.config/nvim/lang-servers/intellij-java-google-style.xml",
                    profile = "GoogleStyle",
                },
            },
            signatureHelp = { enabled = true },
            contentProvider = { preferred = 'fernflower' },
            completion = {
                favoriteStaticMembers = {
                    "org.hamcrest.MatcherAssert.assertThat",
                    "org.hamcrest.Matchers.*",
                    "org.hamcrest.CoreMatchers.*",
                    "org.junit.jupiter.api.Assertions.*",
                    "java.util.Objects.requireNonNull",
                    "java.util.Objects.requireNonNullElse",
                    "org.mockito.Mockito.*"
                },
                filteredTypes = {
                    "com.sun.*",
                    "io.micrometer.shaded.*",
                    "java.awt.*",
                    "jdk.*", "sun.*",
                },
            },
            sources = {
                organizeImports = {
                    starThreshold = 9999,
                    staticStarThreshold = 9999,
                },
            },
            codeGeneration = {
                toString = {
                    template = "${object.className}{${member.name()}=${member.value}, ${otherMembers}}"
                },
                hashCodeEquals = {
                    useJava7Objects = true,
                },
                useBlocks = true,
            },
            init_options = {
                bundles = {},
            },
        }
    },
    cmd = {
        "java",
        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xms1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',
        "-javaagent:" .. "/home/nullboy/.local/share/nvim/mason/packages/jdtls/lombok.jar",
        '-jar',
        vim.fn.glob(
            "~/.local/share/nvim/mason/packages/jdtls/plugins/org.eclipse.equinox.launcher_1.6.400.v20210924-0641.jar"),
        "-configuration", "~/.local/share/nvim/mason/packages/jdtls/config_linux/",
        '-data', workspace_folder,
    },
}

jdtls.start_or_attach(config)
