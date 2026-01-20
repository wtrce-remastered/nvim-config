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
            exclude = "zxcvvbpoqwertyuZXCVVBPOQWERTYU"
        },
        highlight = {
            backdrop = false
        }
    },
    keys = {
        { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash" }
    },
}
