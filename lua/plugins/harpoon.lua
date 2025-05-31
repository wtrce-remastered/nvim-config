return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>jk", function() harpoon:list():replace_at(0) end)
        vim.keymap.set("n", "<leader>je", function() harpoon:list():replace_at(1) end)
        vim.keymap.set("n", "<leader>js", function() harpoon:list():replace_at(2) end)
        vim.keymap.set("n", "<leader>jf", function() harpoon:list():replace_at(3) end)

        vim.keymap.set("n", "<leader>jm", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)

        vim.keymap.set("n", "<leader>jclr", function() harpoon:list():clear() end)

        vim.keymap.set("n", "<C-k>", function() harpoon:list():select(0) end)
        vim.keymap.set("n", "<C-e>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-s>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<C-f>", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)
        vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end)
        vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end)
        vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end)
        vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end)

        vim.keymap.set("n", "<leader>j4", function() harpoon:list():replace_at(4) end)
        vim.keymap.set("n", "<leader>j5", function() harpoon:list():replace_at(5) end)
        vim.keymap.set("n", "<leader>j6", function() harpoon:list():replace_at(6) end)
        vim.keymap.set("n", "<leader>j7", function() harpoon:list():replace_at(7) end)
        vim.keymap.set("n", "<leader>j8", function() harpoon:list():replace_at(8) end)
        vim.keymap.set("n", "<leader>j9", function() harpoon:list():replace_at(9) end)
        vim.keymap.set("n", "<leader>j0", function() harpoon:list():replace_at(0) end)
    end
}
