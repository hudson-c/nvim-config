return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = {
			{"<leader>ff", "<cmd>Telescope find_files<CR>", desc = "Telescope [f]ind [f]ile"},
			{"<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "Telescope [f]ind [g]rep"},
			{"<leader>fB", "<cmd>Telescope buffers<CR>", desc = "Telescope [f]ind [B]uffers"},
			{"<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "Telescope [f]ind [h]elp"}
		},
		opts = {
			extensions = {
				file_browser = {
					hijack_netrw = true
				}
			}
		}
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		opts = {}
	},
	{
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		keys = {
			{"<leader>fb", "<cmd>Telescope file_browser<CR>", desc = "Telescope [f]ile [b]rowser"}
		}
	}
}
