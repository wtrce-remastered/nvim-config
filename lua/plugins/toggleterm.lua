return {
    'akinsho/toggleterm.nvim',
    config = function()
        require("toggleterm").setup({
            open_mapping = [[<c-t>]],
            size = 15,
            start_in_insert = true,
            direction = "float"
        })

        vim.keymap.set("n", "<C-t>", ":ToggleTerm<cr>", { silent = true })
    end
}
