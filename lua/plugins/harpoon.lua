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

        vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader>h5", function() harpoon:list():select(5) end)
        vim.keymap.set("n", "<leader>h6", function() harpoon:list():select(6) end)
        vim.keymap.set("n", "<leader>h7", function() harpoon:list():select(7) end)
        vim.keymap.set("n", "<leader>h8", function() harpoon:list():select(8) end)
        vim.keymap.set("n", "<leader>h9", function() harpoon:list():select(9) end)
        vim.keymap.set("n", "<leader>h0", function() harpoon:list():select(10) end)
    end
}
