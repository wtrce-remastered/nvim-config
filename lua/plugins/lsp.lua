return {
    {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",
        dependencies = {
            {
                "j-hui/fidget.nvim",
                opts = {
                    notification = {
                        window = {
                            winblend = 0
                        }
                    }
                },
            },
            { "folke/neodev.nvim", opts = {} },
        },
        config = function()
            local lspconfig = require("lspconfig")

            local lspconfig_defaults = lspconfig.util.default_config
            lspconfig_defaults.capabilities = vim.tbl_deep_extend(
                "force",
                lspconfig_defaults.capabilities,
                require("cmp_nvim_lsp").default_capabilities()
            )

            lspconfig.lua_ls.setup({})
        end,
    },
    { "hrsh7th/cmp-nvim-lsp" },
    {
        "hrsh7th/nvim-cmp",
        config = function()
            local cmp = require("cmp")

            cmp.setup({
                sources = {
                    { name = "nvim_lsp" },
                },
                mapping = cmp.mapping.preset.insert({
                    ["<C-i>"] = cmp.mapping.complete({}),
                    ["<Tab>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            if cmp.get_selected_entry() ~= nil then
                                cmp.mapping.confirm({
                                    behavior = cmp.ConfirmBehavior.Replace,
                                })
                            else
                                cmp.select_next_item()
                                cmp.mapping.confirm({
                                    behavior = cmp.ConfirmBehavior.Replace,
                                })
                            end
                        else
                            fallback()
                        end
                    end, { "i", "s" }),
                    ["<CR>"] = cmp.mapping.confirm({
                        behavior = cmp.ConfirmBehavior.Replace,
                        select = true,
                    }),
                }),
                snippet = {
                    expand = function(args)
                        vim.snippet.expand(args.body)
                    end,
                },
            })
        end,
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
                ensure_installed = { "lua_ls", "jdtls" }
            })
        end,
    },
}
