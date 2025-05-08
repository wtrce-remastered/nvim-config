return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    opts = {},
    config = function()
        vim.keymap.set("n", "<leader>fx", ":Neotree focus filesystem float<CR>")

        local function is_neotree_visible()
            for _, win in ipairs(vim.api.nvim_list_wins()) do
                local buf = vim.api.nvim_win_get_buf(win)
                if vim.bo[buf].filetype == 'neo-tree' then
                    return true
                end
            end
            return false
        end

        vim.keymap.set('n', '<C-p>', function()
            if is_neotree_visible() then
                vim.cmd('Neotree toggle filesystem')
            else
                vim.cmd('Neotree reveal')
            end
        end, { noremap = true })

        require('neo-tree').setup({
            enable_git_status = false,
            event_handlers = {
                {
                    event = "neo_tree_buffer_enter",
                    handler = function()
                        vim.cmd [[setlocal relativenumber]]
                    end,
                }
            },
            window = {
                position = "float"
            },
            buffers = {
                follow_current_file = {
                    enabled = true
                },
                window = {
                    mappings = {
                        ["/"] = false,
                        ["z"] = false,
                        ["<C-f>"] = false,
                    }
                },
            },
            filesystem = {
                use_libuv_file_watcher = true,
                window = {
                    mappings = {
                        ["j"] = "close_node",
                        ["k"] = "move_cursor_down",
                        ["l"] = "move_cursor_up",
                        [";"] = "open",
                        -- disabled
                        ["/"] = false,
                        ["z"] = false,
                        ["<C-f>"] = false,
                        ["f"] = false,
                    }
                },
                filtered_items = {
                    visible = true,
                    never_show = {
                        ".git"
                    }
                },
            },
        })
    end,
}
