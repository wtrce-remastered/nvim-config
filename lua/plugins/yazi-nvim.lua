return {
    "mikavilpas/yazi.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = {
        { "nvim-lua/plenary.nvim", lazy = true },
    },
    keys = {
        {
            "<leader>cu",
            mode = { "n" },
            "<cmd>Yazi<cr>"
        },
        {
            "<leader>co",
            "<cmd>Yazi cwd<cr>"
        },
    },
    opts = {
        open_for_directories = false,
        keymaps = {
            show_help = "<f1>",
        },
    },
    init = function()
        vim.g.loaded_netrwPlugin = 1
    end,
}
