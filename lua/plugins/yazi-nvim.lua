return {
    "mikavilpas/yazi.nvim",
    version = "*",
    event = "VeryLazy",
    dependencies = {
        { "nvim-lua/plenary.nvim", lazy = true },
    },
    keys = {
        {
            "<leader>yo",
            mode = { "n" },
            "<cmd>Yazi<cr>"
        },
        {
            "<leader>ys",
            "<cmd>Yazi cwd<cr>"
        },
    },
    opts = {
        open_for_directories = false,
        yazi_floating_window_border = "none",
        yazi_floating_window_zindex = nil,
        floating_window = true,
        floating_window_scaling_factor = 1
    },
    init = function()
        vim.g.loaded_netrwPlugin = 1
    end,
}
