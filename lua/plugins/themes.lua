return {
    {
        "gbprod/nord.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require("nord").setup({
                transparent = false,
                borders = true,
            })

            vim.cmd.colorscheme("nord")
        end,
    }
}
