-- local home = vim.env.HOME
--
-- local jdtls = require("jdtls")
-- local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
-- local workspace_dir = home .. "/.jdtls-workspace/" .. project_name
--
-- local java_home = "/Library/Java/JavaVirtualMachines/jdk-21.jdk/Contents/Home/"
--
-- local system_os = "mac_arm"
--
-- local config = {
--     cmd = {
--         java_home .. "bin/java",
--         "-Declipse.application=org.eclipse.jdt.ls.core.id1",
--         "-Dosgi.bundles.defaultStartLevel=4",
--         "-Declipse.product=org.eclipse.jdt.ls.core.product",
--         "-Dlog.protocol=true",
--         "-Dlog.level=ALL",
--         "-javaagent:" .. home .. "/.local/share/nvim/mason/share/jdtls/lombok.jar",
--         "-Xmx4g",
--         "--add-modules=ALL-SYSTEM",
--         "--add-opens", "java.base/java.util=ALL-UNNAMED",
--         "--add-opens", "java.base/java.lang=ALL-UNNAMED",
--
--         "-jar",
--         home .. "/.local/share/nvim/mason/share/jdtls/plugins/org.eclipse.equinox.launcher.jar",
--         "-configuration",
--         home .. "/.local/share/nvim/mason/packages/jdtls/config_" .. system_os,
--         "-data",
--         workspace_dir,
--     },
--
--     root_dir = require("jdtls.setup").find_root({  }),
--
--     settings = {
--         java = {
--             home = java_home,
--             eclipse = {
--                 downloadSources = true,
--             },
--             configuration = {
--                 updateBuildConfiguration = "interactive",
--                 runtimes = {
--                     {
--                         name = "JavaSE-21",
--                         path = java_home,
--                     },
--                 },
--             },
--             maven = {
--                 downloadSources = true,
--             },
--             implementationsCodeLens = {
--                 enabled = true,
--             },
--             referencesCodeLens = {
--                 enabled = true,
--             },
--             references = {
--                 includeDecompiledSources = true,
--             },
--             signatureHelp = { enabled = true },
--             format = {
--                 enabled = true,
--                 -- settings = {
--                 --   url = "https://github.com/google/styleguide/blob/gh-pages/intellij-java-google-style.xml",
--                 --   profile = "GoogleStyle",
--                 -- },
--             },
--             completion = {
--                 favoriteStaticMembers = {
--                     "org.hamcrest.MatcherAssert.assertThat",
--                     "org.hamcrest.Matchers.*",
--                     "org.hamcrest.CoreMatchers.*",
--                     "org.junit.jupiter.api.Assertions.*",
--                     "java.util.Objects.requireNonNull",
--                     "java.util.Objects.requireNonNullElse",
--                     "org.mockito.Mockito.*",
--                 },
--                 importOrder = {
--                     "java",
--                     "javax",
--                     "com",
--                     "org",
--                 },
--             },
--             sources = {
--                 organizeImports = {
--                     starThreshold = 9999,
--                     staticStarThreshold = 9999,
--                 },
--             },
--             codeGeneration = {
--                 toString = {
--                     template = "${object.className}{${member.name(--[[  ]])}=${member.value}, ${otherMembers}}",
--                 },
--                 useBlocks = true,
--             },
--         },
--     },
--     capabilities = require("cmp_nvim_lsp").default_capabilities(),
--     flags = {
--         allow_incremental_sync = true,
--     },
--     init_options = {
--         bundles = bundles,
--         extendedClientCapabilities = jdtls.extendedClientCapabilities,
--     },
-- }
--
-- jdtls.start_or_attach(config)

local home = vim.env.HOME
local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")

-- See `:help vim.lsp.start_client` for an overview of the supported `config` options.
local config = {
    -- The command that starts the language server
    -- See: https://github.com/eclipse/eclipse.jdt.ls#running-from-the-command-line
    cmd = {

        -- 💀
        "java",
        -- depends on if `java` is in your $PATH env variable and if it points to the right version.

        '-Declipse.application=org.eclipse.jdt.ls.core.id1',
        '-Dosgi.bundles.defaultStartLevel=4',
        '-Declipse.product=org.eclipse.jdt.ls.core.product',
        '-Dlog.protocol=true',
        '-Dlog.level=ALL',
        '-Xmx1g',
        '--add-modules=ALL-SYSTEM',
        '--add-opens', 'java.base/java.util=ALL-UNNAMED',
        '--add-opens', 'java.base/java.lang=ALL-UNNAMED',

        -- 💀
        '-jar', home .. '/.local/share/nvim/mason/share/jdtls/plugins/org.eclipse.equinox.launcher.jar',

        -- 💀
        '-configuration', home .. '/.local/share/nvim/mason/packages/jdtls/config_linux',

        -- 💀
        -- See `data directory configuration` section in the README
        '-data', home .. "/.local/share/nvim/jdtls-workspace/" .. project_name
    },

    root_dir = vim.fs.root(0, { "build.gradle" }),

    -- Here you can configure eclipse.jdt.ls specific settings
    -- See https://github.com/eclipse/eclipse.jdt.ls/wiki/Running-the-JAVA-LS-server-from-the-command-line#initialize-request
    -- for a list of options
    settings = {
        java = {
            eclipse = {
                downloadSources = true,
            },
            maven = {
                downloadSources = true,
            },
            implementationsCodeLens = {
                enabled = true,
            },
            referencesCodeLens = {
                enabled = true,
            },
            references = {
                includeDecompiledSources = true,
            },
            signatureHelp = { enabled = true },
            format = {
                enabled = true,
            },
            completion = {
                importOrder = {
                    "java",
                    "javax",
                    "com",
                    "org",
                    "net"
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
                    template = "${object.className}{${member.name(--[[  ]])}=${member.value}, ${otherMembers}}",
                },
                useBlocks = true,
            },
        },
    },

    -- Language server `initializationOptions`
    -- You need to extend the `bundles` with paths to jar files
    -- if you want to use additional eclipse.jdt.ls plugins.
    --
    -- See https://github.com/mfussenegger/nvim-jdtls#java-debug-installation
    --
    -- If you don't plan on using the debugger or other eclipse.jdt.ls plugins you can remove this
    init_options = {
        bundles = {}
    },
}
-- This starts a new client & server,
-- or attaches to an existing client & server depending on the `root_dir`.
require('jdtls').start_or_attach(config)

local function jdtls_full_restart()
    vim.cmd("JdtRestart")
end

vim.keymap.set('n', 'gI', jdtls_full_restart)
