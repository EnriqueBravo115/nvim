vim.bo.shiftwidth = 4
vim.bo.tabstop = 4

local home = os.getenv("HOME")
local jdtls = require("jdtls")

local root_markers = { "gradlew", "mvnw", ".git" }
local root_dir = require("jdtls.setup").find_root(root_markers)

local workspace_folder = home .. "/.cache/jdtls/workspace" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local bundles = {
  vim.fn.glob(
    home ..
    "/.local/share/nvim/mason/packages/java-debug-adapter/extension/server/com.microsoft.java.debug.plugin-0.47.0.jar",
    "\n")
}

vim.list_extend(bundles,
  vim.split(vim.fn.glob(home .. "~/.local/share/nvim/mason/share/java-test/*.jar", 1), "\n"))

local extendedClientCapabilities = jdtls.extendedClientCapabilities
extendedClientCapabilities.resolveAdditionalTextEditsSupport = true

local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require("cmp_nvim_lsp").default_capabilities(capabilities)

local config = {
  capabilities = capabilities,
  settings = {
    flags = {
      allow_incremental_sync = true,
    },
    init_options = {
    },
    java = {
      --      saveActions = {
      --          organizeImports = true,
      --      },
      --      format = {
      --        settings = {
      --          url = home .. ".config/nvim/lang-servers/eclipse-java-google-style.xml",
      --          profile = "GoogleStyle",
      --        },
      --      },
      configuration = {
        runtimes = {
          {
            name = "JavaSE-11",
            path = "/home/nullboy/.sdkman/candidates/java/11.0.21-tem"
          },
          {
            name = "JavaSE-1.8",
            path = "/home/nullboy/.sdkman/candidates/java/8.0.392-tem"
          }
        },
        updateBuildConfiguration = "interactive",
      },
      signatureHelp = { enabled = true },
      contentProvider = { preferred = "fernflower" },
      implementationsCodeLens = {
        enabled = true,
      },
      referencesCodeLens = {
        enabled = true,
      },
      references = {
        includeDecompiledSources = true,
      },
      inlayHints = {
        parameterNames = {
          enabled = "all", -- literals, all, none
        },
      },
      completion = {
        favoriteStaticMembers = {
          -- "org.hamcrest.MatcherAssert.assertThat",
          -- "org.hamcrest.Matchers.*",
          -- "org.hamcrest.CoreMatchers.*",
          "org.junit.jupiter.api.Assertions.*",
          "java.util.Objects.requireNonNull",
          "java.util.Objects.requireNonNullElse",
          "org.mockito.Mockito.*",
          "java.util.stream.Collectors.*",
          "java.util.Map.entry",
          "org.assertj.core.api.Assertions.*"
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
      extendedClientCapabilities = extendedClientCapabilities
    },
  },
  cmd = {
    "java",
    "-Declipse.application=org.eclipse.jdt.ls.core.id1",
    "-Dosgi.bundles.defaultStartLevel=4",
    "-Declipse.product=org.eclipse.jdt.ls.core.product",
    "-Dlog.protocol=true",
    "-Dlog.level=ALL",
    "-Xmx4g",
    "--add-modules=ALL-SYSTEM",
    "--add-opens", "java.base/java.util=ALL-UNNAMED",
    "--add-opens", "java.base/java.lang=ALL-UNNAMED",
    "-javaagent:" .. home .. "/Applications/lombok.jar",
    "-jar",
    vim.fn.glob(
      "/home/nullboy/Applications/jdt33/plugins/org.eclipse.equinox.launcher_*.jar"),
    "-configuration", "/home/nullboy/Applications/jdt33/config_linux/",
    "-data", workspace_folder,
  },
  init_options = {
    bundles = bundles,
  },
}

config["on_attach"] = function(client, bufnr)
  --local _, _ = pcall(vim.lsp.codelens.refresh)
  require("jdtls").setup_dap({ hotcodereplace = "auto" })
  require("lsp-config").on_attach(client, bufnr)
  local status_ok, jdtls_dap = pcall(require, "jdtls.dap")
  if status_ok then
    jdtls_dap.setup_dap_main_class_configs()
  end
end

require("dap.ext.vscode").load_launchjs()

--vim.api.nvim_create_autocmd({ "BufWritePost" }, {
--    pattern = { "*.java" },
--    callback = function()
--        local _, _ = pcall(vim.lsp.codelens.refresh)
--    end,
--})

jdtls.start_or_attach(config)

local set = vim.keymap.set

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
