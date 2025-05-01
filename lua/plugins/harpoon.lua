return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>ja", function() harpoon:list():add() end)
        vim.keymap.set("n", "<leader>jr", function() harpoon:list():remove() end)
        vim.keymap.set("n", "<leader>jclr", function() harpoon:list():clear() end)
        vim.keymap.set("n", "<leader>jm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>j1", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>j2", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>j3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>j4", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader>j5", function() harpoon:list():select(5) end)
        vim.keymap.set("n", "<leader>j6", function() harpoon:list():select(6) end)
        vim.keymap.set("n", "<leader>j7", function() harpoon:list():select(7) end)
        vim.keymap.set("n", "<leader>j8", function() harpoon:list():select(8) end)
        vim.keymap.set("n", "<leader>j9", function() harpoon:list():select(9) end)
        vim.keymap.set("n", "<leader>j0", function() harpoon:list():select(0) end)

        vim.keymap.set("n", "<leader>jk", function() harpoon:list():next() end)
        vim.keymap.set("n", "<leader>jl", function() harpoon:list():prev() end)
    end
}
