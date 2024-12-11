return {
	{
		"nvim-telescope/telescope.nvim",
		dependencies = { 'nvim-lua/plenary.nvim' },
		keys = {
			{"<leader>ff", "<cmd>Telescope find_files<CR>", desc = "file"},
			{"<leader>fg", "<cmd>Telescope live_grep<CR>", desc = "grep"},
			{"<leader>fb", "<cmd>Telescope buffers<CR>", desc = "buffers"},
			{"<leader>fm", "<cmd>Telescope marks<CR>", desc = "marks"},
			{"<leader>fh", "<cmd>Telescope help_tags<CR>", desc = "help"},
			{"<leader>fk", "<cmd>Telescope keymaps<CR>", desc = "keymaps"},
			{"<leader>fc", "<cmd>Telescope colorscheme<CR>", desc = "colorschemes"},
			{"<leader>fr", "<cmd>Telescope lsp_references<CR>", desc = "references"}
		},
		opts = {
			extensions = {
				file_browser = {
					hijack_netrw = true,
				},
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
			{"<leader>fx", "<cmd>Telescope file_browser<CR>", desc = "explore"}
		}
	},
	{
		"nvim-telescope/telescope-project.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		keys = {
			{"<leader>po", ":lua require'telescope'.extensions.project.project{}<CR>", desc="open"},
		},
	}
}
