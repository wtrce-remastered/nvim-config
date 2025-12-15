return {
    "nvim-treesitter/nvim-treesitter", build = ":TSUpdate",
    branch = "master",
    config = function()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            auto_install = true,
            sync_install = false,
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
