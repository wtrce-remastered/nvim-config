return {
    "folke/zen-mode.nvim",
    config = function()
        require("zen-mode").setup({
            window = {
                width = 130,
                height = 0.9,

                options = {
                    number = false,
                    relativenumber = false,
                    cursorline = false,
                    cursorcolumn = false
                }
            }
        })

        vim.keymap.set("n", "<leader>zm", ":ZenMode<cr>")
    end
}
