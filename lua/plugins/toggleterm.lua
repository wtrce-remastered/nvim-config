return {
    'akinsho/toggleterm.nvim',
    config = function()
        require("toggleterm").setup({
            size = 15,
            start_in_insert = true,
            persist_mode = true
        })

        vim.keymap.set("n", "<C-t>", ":ToggleTerm size=20 dir=$PWD direction=float<cr>", { silent = true })
        vim.keymap.set("t", "<C-t>", "<C-\\><C-n>:ToggleTerm size=20 dir=$PWD direction=float<cr>", { silent = true })
    end
}
