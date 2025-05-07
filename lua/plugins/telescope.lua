return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local builtin = require("telescope.builtin")

            vim.keymap.set('n', '<leader>fp', builtin.find_files, {})
            vim.keymap.set('n', '<leader>fs', builtin.live_grep, {})
        end
    },
    {
        'nvim-telescope/telescope-ui-select.nvim',
        config = function()
            local telescope = require('telescope')

            telescope.setup({
                defaults = {
                    file_ignore_patterns = {
                        "node_modules",
                        ".git",
                        "dist",
                        "build",
                        "%.o$",
                        "%.class$"
                    },
                    mappings = {
                        n = {
                            ['k'] = require('telescope.actions').move_selection_next,
                            ['l'] = require('telescope.actions').move_selection_previous,
                            [';'] = require('telescope.actions').select_default,
                        }
                    }

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
