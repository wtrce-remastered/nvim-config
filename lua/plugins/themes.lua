return {
    "slugbyte/lackluster.nvim",
    lazy = false,
    priority = 1000,
    init = function()
        local lackluster = require("lackluster")

        lackluster.setup({
            tweak_background = {
                normal = 'none'
            }
        })

        vim.cmd.colorscheme("lackluster-hack")
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
