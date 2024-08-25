return {
	"VonHeikemen/lsp-zero.nvim",
	dependencies = { "neovim/nvim-lspconfig" },
	opts = {
		on_attach = function(client, bufnr)
			-- see :help lsp-zero-keybindings
			-- to learn the available actions
			local lsp_zero = require('lsp-zero')
			lsp_zero.default_keymaps({ buffer = bufnr })
		end,
  }
}

