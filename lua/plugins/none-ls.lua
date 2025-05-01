return {
	"nvimtools/none-ls.nvim",
	config = function()
		local nullls = require("null-ls")

		nullls.setup({
			sources = {
				nullls.builtins.formatting.stylua,
			},
		})

		vim.keymap.set("n", "<leader>=", vim.lsp.buf.format, {})
	end,
}
