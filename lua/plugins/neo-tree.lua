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
        vim.keymap.set("n", "<leader>ff", ":Neotree toggle filesystem<CR>", {})
        vim.keymap.set("n", "<leader>fg", ":Neotree focus git_status<CR>", {})

        require("neo-tree").setup({
            filesystem = {
                window = {
                    mappings = {
                        ["j"] = "close_node",
                        ["k"] = "move_cursor_down",
                        ["l"] = "move_cursor_up",
                        [";"] = "open",
                    },
                },
            },
        })
    end,
}
