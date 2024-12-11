return {
	{
		"tpope/vim-fugitive",
		keys = {
			{"<leader>gg", "<cmd>tab G<CR>", desc = "dashboard"},
			{"<leader>gc", "<cmd>G commit<CR>", desc = "commit"},
			{"<leader>gd", "<cmd>G diff<CR>", desc = "diff"},
			{"<leader>gs", "<cmd>G status<CR>", desc = "status"},
			{"<leader>gb", "<cmd>Telescope git_branches<CR>", desc = "branch"},
			{"<leader>gl", "<cmd>Telescope git_commits<CR>", desc = "log"},
			{"<leader>gP", "<cmd>G push<CR>", desc = "push"},
			{"<leader>gp", "<cmd>G pull<CR>", desc = "pull"},
		}
	}
}
