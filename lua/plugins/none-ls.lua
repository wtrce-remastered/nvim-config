return {
	"nvimtools/none-ls.nvim",
	config = function()
		local nullls = require("null-ls")

		nullls.setup({
			sources = {
				nullls.builtins.formatting.stylua,
				nullls.builtins.formatting.prettier,
				nullls.builtins.formatting.eslint,
			},
		})

		vim.keymap.set("n", "<leader>=", function ()
		    vim.lsp.buf.format()
            vim.cmd('w')
		end, {})
	end,
}
