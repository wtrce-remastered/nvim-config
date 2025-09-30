return {
    "folke/flash.nvim",
    event = "VeryLazy",
    opts = {
        modes = {
            char = {
                keys = {},
            }
        },
        label = {
            exclude = "qjzkxwvzfgdyQJZKXWVZFGDY"
        }
    },
    keys = {
        { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,       desc = "Flash" }
    },
}
