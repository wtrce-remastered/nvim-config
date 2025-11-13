return {
    "gbprod/nord.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nord").setup({
            transparent = true,
            borders = true,
        })

        vim.cmd.colorscheme("nord")
    end,
}
