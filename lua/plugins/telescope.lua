return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")

            vim.keymap.set('n', '<C-j>', function() builtin.find_files({ previewer = false }) end, {})
            vim.keymap.set('n', '<C-i>', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>fd', builtin.lsp_document_symbols)
            vim.keymap.set('n', '<leader>fb', builtin.buffers)
            vim.keymap.set('n', '<leader>ft', builtin.colorscheme)

            vim.keymap.set('n', '<leader>gr', builtin.lsp_references)

            vim.keymap.set('n', 'gd', builtin.lsp_definitions)
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration)
            vim.keymap.set('n', '<leader>gg', builtin.lsp_implementations)
            vim.keymap.set('n', 'gy', builtin.lsp_type_definitions)

            vim.keymap.set('n', 'ge', builtin.diagnostics)
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            local function normalModeAttach()
                vim.defer_fn(function()
                    vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Esc>", true, false, true), "n", false)
                end, 10)

                return true
            end

            local telescope = require('telescope')

            telescope.setup({
                defaults = {
                    previewer = false,
                    file_ignore_patterns = {
                        ".git/",
                        "%.o$",
                        "%.class$"
                    },
                    mappings = {
                        n = {
                            ['h'] = require('telescope.actions').close,
                            ['j'] = require('telescope.actions').move_selection_next,
                            ['k'] = require('telescope.actions').move_selection_previous,
                            ['l'] = require('telescope.actions').select_default,
                        },
                        i = {
                            ['<C-k>'] = function()
                                vim.api.nvim_feedkeys(
                                    vim.api.nvim_replace_termcodes('<Esc>', true, false, true),
                                    'n',
                                    false
                                )
                            end,
                        }
                    }

                },
                pickers = {
                    lsp_definitions = {
                        attach_mappings = normalModeAttach,
                        path_display = { "truncate" },
                    },
                    lsp_references = {
                        path_display = { "truncate" },
                        attach_mappings = normalModeAttach,
                    },
                    lsp_implementations = {
                        path_display = { "truncate" },
                        attach_mappings = normalModeAttach,
                    },
                    lsp_type_definitions = {
                        path_display = { "truncate" },
                        attach_mappings = normalModeAttach,
                    },
                },
                extensions = {
                    ['ui-select'] = {
                        require('telescope.themes').get_dropdown {}
                    }
                },
            })


            telescope.load_extension('ui-select')
        end
    }
}
