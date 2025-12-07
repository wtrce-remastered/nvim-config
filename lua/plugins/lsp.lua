return {
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        dependencies = {
            {
                "saghen/blink.cmp",
                "j-hui/fidget.nvim",
                config = function()
                    require("fidget").setup({
                        notification = {
                            window = {
                                winblend = 0
                            }
                        }
                    })
                end
            },
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

            vim.keymap.set('n', '<leader>hR', '<cmd>lua vim.lsp.buf.rename()<CR>')
            vim.keymap.set("n", "<leader>hb", '<cmd>lua vim.lsp.buf.format()<cr>:w<cr>')
            vim.keymap.set("n", "<leader>hm", '<cmd>lua require("jdtls").organize_imports()<cr>')
            vim.keymap.set("n", "<leader>ho", '<cmd>lua vim.lsp.buf.code_action()<cr>')
            vim.keymap.set('n', '<leader>hc', function() vim.diagnostic.open_float({ scope = 'cursor' }) end)
            vim.keymap.set('n', '<leader>hI', '<cmd>lua vim.lsp.buf.hover()<cr>')
        end,
    },
    {
        'saghen/blink.cmp',

        version = '1.*',

        ---@module 'blink.cmp'
        ---@type blink.cmp.Config
        opts = {
            keymap = { preset = 'default' },
            signature = { enabled = true },
            appearance = {
                nerd_font_variant = 'mono'
            },
            completion = {
                documentation = { auto_show = true },
                list = {
                    selection = {
                        preselect = false,
                        auto_select = false
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
    -- { "hrsh7th/cmp-nvim-lsp" },
    -- {
    --     "hrsh7th/nvim-cmp",
    --     config = function()
    --         local cmp = require("cmp")
    --
    --         cmp.setup({
    --             sources = {
    --                 { name = "nvim_lsp" },
    --             },
    --             mapping = cmp.mapping.preset.insert({
    --                 ["<C-c>"] = cmp.mapping.complete({}),
    --                 ["<C-i>"] = cmp.mapping(function(fallback)
    --                     if cmp.visible() then
    --                         if cmp.get_selected_entry() ~= nil then
    --                             cmp.mapping.confirm({
    --                                 behavior = cmp.ConfirmBehavior.Replace,
    --                             })
    --                         else
    --                             cmp.select_next_item()
    --                             cmp.mapping.confirm({
    --                                 behavior = cmp.ConfirmBehavior.Replace,
    --                             })
    --                         end
    --                     else
    --                         fallback()
    --                     end
    --                 end, { "i", "s" }),
    --                 ["<CR>"] = cmp.mapping.confirm({
    --                     behavior = cmp.ConfirmBehavior.Replace,
    --                     select = true,
    --                 }),
    --             }),
    --             snippet = {
    --                 expand = function(args)
    --                     vim.snippet.expand(args.body)
    --                 end,
    --             },
    --         })
    --     end,
    -- },
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
