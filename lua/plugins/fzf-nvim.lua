return {
    "ibhagwan/fzf-lua",
    dependencies = {
        { "ThePrimeagen/harpoon" },
    },
    config = function()
        local fzf = require("fzf-lua")

        fzf.setup({
            winopts = {
                fullscreen = true,
                title = false,

                border = "none",
                backdrop = 0,

                preview = {
                    border = "none"
                }
            },
            files = {
                fd_opts = [[--color=never --hidden --type f --type l -E .git -E **/*.class -E **/*.classpath -E **/*.project]]
            }
        })

        vim.keymap.set('n', '<C-m>', fzf.lsp_document_symbols)
        vim.keymap.set('n', '<C-n>', fzf.files)

        vim.keymap.set('n', '<leader>fb', fzf.builtin)

        vim.keymap.set('n', '<leader>fg', fzf.live_grep)
        vim.keymap.set('n', '<leader>fl', fzf.blines)
        vim.keymap.set('n', '<leader>fr', fzf.lsp_references)
        vim.keymap.set('n', '<leader>fd', fzf.lsp_definitions)
        vim.keymap.set('n', '<leader>fi', fzf.lsp_implementations)
        vim.keymap.set('n', '<leader>fD', fzf.lsp_document_diagnostics)

        vim.keymap.set('n', '<leader>fs', fzf.resume)
    end
}
