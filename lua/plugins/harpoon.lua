return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>sa", function() harpoon:list():replace_at(0) end)
        vim.keymap.set("n", "<leader>se", function() harpoon:list():replace_at(1) end)
        vim.keymap.set("n", "<leader>sc", function() harpoon:list():replace_at(2) end)

        vim.keymap.set("n", "<C-a>", function() harpoon:list():select(0) end)
        vim.keymap.set("n", "<C-e>", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<C-c>", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>3", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>4", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader>5", function() harpoon:list():select(5) end)
        vim.keymap.set("n", "<leader>6", function() harpoon:list():select(6) end)
        vim.keymap.set("n", "<leader>7", function() harpoon:list():select(7) end)
        vim.keymap.set("n", "<leader>8", function() harpoon:list():select(8) end)
        vim.keymap.set("n", "<leader>9", function() harpoon:list():select(9) end)

        vim.keymap.set("n", "<leader>s3", function() harpoon:list():replace_at(3) end)
        vim.keymap.set("n", "<leader>s4", function() harpoon:list():replace_at(4) end)
        vim.keymap.set("n", "<leader>s5", function() harpoon:list():replace_at(5) end)
        vim.keymap.set("n", "<leader>s6", function() harpoon:list():replace_at(6) end)
        vim.keymap.set("n", "<leader>s7", function() harpoon:list():replace_at(7) end)
        vim.keymap.set("n", "<leader>s8", function() harpoon:list():replace_at(8) end)
        vim.keymap.set("n", "<leader>s9", function() harpoon:list():replace_at(9) end)
    end
}
