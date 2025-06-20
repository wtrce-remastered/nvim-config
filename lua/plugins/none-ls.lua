return {
    "nvimtools/none-ls.nvim",
    config = function()
        local nullls = require("null-ls")

        nullls.setup({
            sources = {
                nullls.builtins.formatting.stylua,
                nullls.builtins.formatting.prettier
            },
        })

        vim.keymap.set("n", "<C-\\>", '<cmd>lua vim.lsp.buf.format()<cr>:w<cr>')
    end,
}
