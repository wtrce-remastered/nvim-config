return {
    "oysandvik94/curl.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    config = function()
        local curl = require("curl")
        curl.setup({})

        vim.keymap.set("n", "<leader>co", ":CurlOpen global<CR>")
    end,
}
