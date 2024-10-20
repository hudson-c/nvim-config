return {
	"folke/which-key.nvim",
	opts = {
		preset = "helix",
		spec = {
			{"<leader>f", group="find"},
			{"<leader>g", group="git"},
			{"<leader>t", group="toggle"},
			{"<leader>h", group="harpoon"},
			{"<localleader>p", group="project"},

			{"<localleader>e", group="evaluate"},
			{"<localleader>l", group="log"},
		}
	}
}
