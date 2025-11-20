return {
    'dasupradyumna/midnight.nvim',
    lazy = false,
    priority = 1000,
    config = function ()
        vim.cmd.colorscheme 'midnight'

        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalNC", { bg = "none" })

        vim.api.nvim_set_hl(0, "SignColumn",      { bg = "none" })

    end
}

-- return {
--     "gbprod/nord.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--         require("nord").setup({
--             transparent = true,
--             borders = true,
--         })
--
--         vim.cmd.colorscheme("nord")
--     end,
-- }
