return {
    "nvimtools/none-ls.nvim",
    config = function()
        local nullls = require("null-ls")

        nullls.setup({
            sources = {
                nullls.builtins.formatting.stylua,
                nullls.builtins.formatting.prettier,
                nullls.builtins.formatting.eslint,
            },
        })

        vim.keymap.set("n", "<leader>=", vim.lsp.buf.format)
    end,
}
