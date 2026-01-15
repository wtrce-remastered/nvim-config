return {
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        dependencies = {
            { "saghen/blink.cmp" },
            { "folke/neodev.nvim", opts = {} },
        },
        config = function()
            local lspconfig = require("lspconfig")
            local capabilities = require('blink.cmp').get_lsp_capabilities()

            local lspconfig_defaults = lspconfig.util.default_config
            lspconfig_defaults.capabilities = vim.tbl_deep_extend(
                "force",
                capabilities,
                capabilities
            )

            vim.keymap.set("n", "<leader>lR", ":LspRestart<cr>", { silent = true })

            vim.keymap.set('n', '<leader>lr', ':lua vim.lsp.buf.rename()<CR>')
            vim.keymap.set("n", "<leader>lf", ':lua vim.lsp.buf.format()<cr>:w<cr>')
            vim.keymap.set("n", "<leader>lm", function() vim.lsp.buf.code_action({ context = { only = { "source.organizeImports" } }, apply = true }) end, {})
            vim.keymap.set("n", "<leader>la", ':lua vim.lsp.buf.code_action()<cr>')
            vim.keymap.set('n', '<leader>li', function() vim.diagnostic.open_float({ scope = 'cursor' }) end)
            vim.keymap.set('n', '<leader>lI', ':lua vim.lsp.buf.hover()<cr>')
        end,
    },
    {
        'saghen/blink.cmp',

        version = '1.*',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = {
                preset = 'default',
                ['<CR>'] = { 'accept', 'fallback' }
            },
            signature = { enabled = true },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = {
                documentation = { auto_show = true },
                list = {
                    selection = {
                        preselect = false
                    }
                }
            },
            sources = {
                default = { 'lsp', 'path', 'buffer' },
            },
            fuzzy = { implementation = "prefer_rust_with_warning" }
        },
        opts_extend = { "sources.default" }
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup({})
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                automatic_enable = true,
                ensure_installed = { "lua_ls", "clangd" }
            })
        end,
    },
}
