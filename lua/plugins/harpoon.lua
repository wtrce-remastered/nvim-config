return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
        local harpoon = require("harpoon")

        harpoon:setup()

        vim.keymap.set("n", "<leader>sa", function() harpoon:list():replace_at(11) end)
        vim.keymap.set("n", "<leader>se", function() harpoon:list():replace_at(12) end)
        vim.keymap.set("n", "<leader>sc", function() harpoon:list():replace_at(13) end)

        vim.keymap.set("n", "<C-a>", function() harpoon:list():select(11) end)
        vim.keymap.set("n", "<C-e>", function() harpoon:list():select(12) end)
        vim.keymap.set("n", "<C-c>", function() harpoon:list():select(13) end)

        vim.keymap.set("n", "<leader>+", function() harpoon:list():select(1) end)
        vim.keymap.set("n", "<leader>[", function() harpoon:list():select(2) end)
        vim.keymap.set("n", "<leader>{", function() harpoon:list():select(3) end)
        vim.keymap.set("n", "<leader>(", function() harpoon:list():select(4) end)
        vim.keymap.set("n", "<leader>&", function() harpoon:list():select(5) end)
        vim.keymap.set("n", "<leader>=", function() harpoon:list():select(6) end)
        vim.keymap.set("n", "<leader>)", function() harpoon:list():select(7) end)
        vim.keymap.set("n", "<leader>}", function() harpoon:list():select(8) end)
        vim.keymap.set("n", "<leader>]", function() harpoon:list():select(9) end)
        vim.keymap.set("n", "<leader>*", function() harpoon:list():select(10) end)

        vim.keymap.set("n", "<leader>s+", function() harpoon:list():replace_at(1) end)
        vim.keymap.set("n", "<leader>s[", function() harpoon:list():replace_at(2) end)
        vim.keymap.set("n", "<leader>s{", function() harpoon:list():replace_at(3) end)
        vim.keymap.set("n", "<leader>s(", function() harpoon:list():replace_at(4) end)
        vim.keymap.set("n", "<leader>s&", function() harpoon:list():replace_at(5) end)
        vim.keymap.set("n", "<leader>s=", function() harpoon:list():replace_at(6) end)
        vim.keymap.set("n", "<leader>s)", function() harpoon:list():replace_at(7) end)
        vim.keymap.set("n", "<leader>s}", function() harpoon:list():replace_at(8) end)
        vim.keymap.set("n", "<leader>s]", function() harpoon:list():replace_at(9) end)
        vim.keymap.set("n", "<leader>s*", function() harpoon:list():replace_at(10) end)
    end
}
