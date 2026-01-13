return {
    'akinsho/toggleterm.nvim',
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<c-s>]],
            start_in_insert = true,
            direction = "float",
            shade_terminals = true,
            float_opts = {
                border = "none",
                winblend = 0,

                width = function()
                    return math.floor(vim.o.columns * 1.0)
                end,
                height = function()
                    return math.floor(vim.o.lines * 0.96)
                end,

                row = function()
                    return math.floor((vim.o.lines - (vim.o.lines * 0.96)) / 2)
                end,
                col = function()
                    return 0
                end,
            }
        })

        vim.keymap.set("n", "<C-s>", ":ToggleTerm<cr>", { silent = true })
    end
}
