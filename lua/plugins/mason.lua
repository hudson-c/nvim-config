return {
	{
		"williamboman/mason.nvim",
		keys = {
			{"<leader>m", "<cmd>Mason<CR>", desc = "Mason"}
		},
		opts = {}
	},
	{
		"williamboman/mason-lspconfig.nvim",
		opts = {
			handlers = {
				function(server)
					require('lspconfig')[server].setup({})
				end,
			},
		}
	}
}
