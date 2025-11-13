return {
    "ibhagwan/fzf-lua",
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
            }
        })

        vim.keymap.set('n', '<C-n>', fzf.files)

        vim.keymap.set('n', '<leader>hl', function()
            fzf.files({ fzf_opts = { ["--query"] = vim.fn.getreg("0") } })
        end)

        vim.keymap.set('n', '<leader>hh', fzf.builtin)

        vim.keymap.set('n', '<leader>he', fzf.live_grep)
        vim.keymap.set('n', '<leader>ha', fzf.lsp_finder)
        vim.keymap.set('n', '<leader>hu', fzf.lsp_document_symbols)
        vim.keymap.set('n', '<leader>hr', fzf.lsp_references)
        vim.keymap.set('n', '<leader>ht', fzf.lsp_definitions)
        vim.keymap.set('n', '<leader>hi', fzf.lsp_implementations)
        vim.keymap.set('n', '<leader>hD', fzf.lsp_document_diagnostics)

        vim.keymap.set('n', '<leader>hs', fzf.resume)
    end
}
