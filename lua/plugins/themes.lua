return {
    -- {
    --     'projekt0n/github-nvim-theme',
    --     name = 'github-theme',
    --     priority = 1000,
    --     config = function()
    --         require('github-theme').setup({
    --             options = {
    --                 transparent = false
    --             }
    --         })
    --
    --         vim.cmd("colorscheme github_dark")
    --
    --         vim.api.nvim_set_hl(0, "CursorLineNR", { fg = "white" })
    --         vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
    --     end,
    -- }
    {
        'shaunsingh/nord.nvim',
        priority = 1000,
        config = function()
            vim.g.nord_disable_background = true
            require('nord').set()

            vim.api.nvim_set_hl(0, "CursorLineNR", { fg = "white" })
            vim.api.nvim_set_hl(0, "CursorLine", { bg = "none" })
        end,
    }
}
