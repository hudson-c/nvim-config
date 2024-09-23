return {
	{
		"tpope/vim-fugitive",
		keys = {
			{"<leader>gg", "<cmd>G<CR>", desc = "<g>it"},
			{"<leader>gc", "<cmd>G commit<CR>", desc = "[g]it [c]ommit"},
			{"<leader>gd", "<cmd>G diff<CR>", desc = "[g]it [d]iff"},
			{"<leader>gs", "<cmd>G status<CR>", desc = "[g]it [s]tatus"},
			{"<leader>gb", "<cmd>G branch<CR>", desc = "[g]it [b]ranch"},
			{"<leader>gl", "<cmd>G log<CR>", desc = "[g]it [l]og"},
			{"<leader>gp", "<cmd>G push<CR>", desc = "[g]it [p]ush"},
		}
	}
}
