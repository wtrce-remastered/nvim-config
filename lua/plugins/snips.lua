return {
    "L3MON4D3/LuaSnip",
    dependencies = { "rafamadriz/friendly-snippets" },
    config = function()
        local ls = require("luasnip")

        ls.add_snippets("all", {
            ls.parser.parse_snippet("trig", "This is a test snippet"),
        })

        vim.keymap.set("i", "<C-t>", function()
            if ls.expandable() then
                ls.expand()
            end
        end, { silent = true })

        vim.keymap.set({ "i", "s" }, "<C-l>", function()
            if ls.jumpable(1) then
                ls.jump(1)
            end
        end, { silent = true })

        require("luasnip.loaders.from_lua").lazy_load({ paths = "~/.config/nvim/lua/snippets" })
        ls.filetype_extend("typescriptreact", { "typescript" })
    end
}
