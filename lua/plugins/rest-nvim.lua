return {
    "rest-nvim/rest.nvim",
    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },
    config = function()
        vim.keymap.set('n', '<leader>xr', ':Rest run<CR>')
    end,
}
