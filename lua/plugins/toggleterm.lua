return {
    'akinsho/toggleterm.nvim',
    config = function()
        require("toggleterm").setup({
            size = 15
        })

        vim.keymap.set("n", "<C-t>", ":ToggleTerm size=20 dir=$PWD direction=float<cr>", { silent = true })
        vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:ToggleTerm size=20 dir=$PWD direction=float<cr>", { silent = true })
    end
}
