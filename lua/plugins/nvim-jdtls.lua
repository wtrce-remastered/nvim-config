return {
    'mfussenegger/nvim-jdtls',
    ft = 'java',
    config = function ()
        local jdtls = require("jdtls")
        vim.keymap.set('n', '<leader>jr', jdtls.update_project_config, { silent = true })
    end
}
