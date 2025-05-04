return {
    {
        'neovim/nvim-lspconfig',
        event = 'VeryLazy',
        dependencies = {
            { 'j-hui/fidget.nvim', opts = {} },
            { 'folke/neodev.nvim', opts = {} }
        },
        config = function()
            local lspconfig = require('lspconfig')

            local lspconfig_defaults = lspconfig.util.default_config
            lspconfig_defaults.capabilities = vim.tbl_deep_extend(
                'force',
                lspconfig_defaults.capabilities,
                require('cmp_nvim_lsp').default_capabilities()
            )
        end
    },
    { 'hrsh7th/cmp-nvim-lsp' },
    {
        'hrsh7th/nvim-cmp',
        config = function()
            local cmp = require('cmp')

            cmp.setup({
                sources = {
                    { name = 'nvim_lsp' }
                },
                mapping = cmp.mapping.preset.insert({
                    ['<C-n>'] = cmp.mapping.complete {},
                    ['<Tab>'] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            if cmp.get_selected_entry() ~= nil then
                                cmp.mapping.confirm {
                                    behavior = cmp.ConfirmBehavior.Replace,
                                }
                            else
                                cmp.select_next_item()
                                cmp.mapping.confirm {
                                    behavior = cmp.ConfirmBehavior.Replace,
                                }
                            end
                        else
                            fallback()
                        end
                    end, { 'i', 's' }),
                    ['<CR>'] = cmp.mapping.confirm {
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    },
                }),
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end
                }
            })
        end
    },
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup({})
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = {
                    'jdtls'
                }
            })

            local lspconfig = require('lspconfig')
            local lsp_capabilities = require('cmp_nvim_lsp').default_capabilities()

            -- local lsp_attach = function(client, bufnr)
            --     local opts = { buffer = bufnr }
            --
            --     vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', opts)
            --     vim.keymap.set('n', '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', opts)
            --     vim.keymap.set('n', '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', opts)
            --     vim.keymap.set('n', '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', opts)
            --     vim.keymap.set('n', '<leader>go', '<cmd>lua vim.lsp.buf.type_definition()<cr>', opts)
            --     vim.keymap.set('n', '<leader>gr', '<cmd>lua vim.lsp.buf.references()<cr>', opts)
            --     vim.keymap.set('n', '<leader>gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>', opts)
            --     vim.keymap.set('n', '<leader>rn', '<cmd>lua vim.lsp.buf.rename()<cr>', opts)
            --     vim.keymap.set({ 'n', 'x' }, '<leader>fmt', '<cmd>lua vim.lsp.buf.format({async = true})<cr>', opts)
            --     vim.keymap.set('n', '<leader>ca', '<cmd>lua vim.lsp.buf.code_action()<cr>', opts)
            -- end

            require('mason-lspconfig').setup_handlers({
                function(server_name)
                    if server_name ~= 'jdtls' then
                        lspconfig[server_name].setup({
                            capabilities = lsp_capabilities,
                        })
                    end
                end
            })

            lspconfig.lua_ls.setup {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { 'vim' },
                        },
                    },
                },
            }
        end
    },
}
