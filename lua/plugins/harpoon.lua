return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<C-h>", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
        vim.keymap.set("n", "<leader>hp", function() harpoon:list():add() end)

        vim.keymap.set("n", "<leader>ha", function() harpoon:list():replace_at(120) end)
        vim.keymap.set("n", "<leader>he", function() harpoon:list():replace_at(121) end)
        vim.keymap.set("n", "<leader>hi", function() harpoon:list():replace_at(122) end)

        vim.keymap.set("n", "<C-a>", function() harpoon:list():select(120) end)
        vim.keymap.set("n", "<C-e>", function() harpoon:list():select(121) end)
        vim.keymap.set("n", "<C-i>", function() harpoon:list():select(122) end)
    end
}
