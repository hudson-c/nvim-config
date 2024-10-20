return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		{"neovim/nvim-lspconfig"},
		{"hrsh7th/cmp-nvim-lsp"},
		{"hrsh7th/cmp-buffer"},
		{"hrsh7th/cmp-path"},
		{"hrsh7th/cmp-cmdline"},
		{"hrsh7th/nvim-cmp"},
		{"L3MON4D3/LuaSnip"},
		{"saadparwaiz1/cmp_luasnip"},
		{"petertriho/cmp-git"},
		{"PaterJason/cmp-conjure"}
	},
	opts = function(_, opts)
		-- Set up nvim-cmp.
		local luasnip = require("luasnip")
		local cmp = require'cmp'

		cmp.setup({
			snippet = {
				-- REQUIRED - you must specify a snippet engine
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
			window = {
				-- completion = cmp.config.window.bordered(),
				-- documentation = cmp.config.window.bordered(),
			},
			mapping = {
				-- Use <C-n> and <C-p> to navigate through completion menu
				["<C-n>"] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
				["<C-p>"] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),

				-- Enter key behavior: Confirm if an item is selected, do nothing if not
				["<CR>"] = cmp.mapping(function(fallback)
					if cmp.visible() and cmp.get_selected_entry() then
						cmp.confirm({ behavior = cmp.ConfirmBehavior.Replace, select = false })
					else
						fallback() -- Do nothing if no item is selected
					end
				end, { "i", "s" }),

				-- Optional: Map <C-e> to close the completion menu
				["<C-e>"] = cmp.mapping.abort(),
			},
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' },
				{ name = 'conjure' }
			}, {
				{ name = 'buffer' },
			})
		})

		-- Set configuration for specific filetype.
		cmp.setup.filetype('gitcommit', {
			sources = cmp.config.sources({
				{ name = 'git' },
			}, {
				{ name = 'buffer' },
			})
		})
		require("cmp_git").setup() 

		-- Use buffer source for `/` and `?` (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline({ '/', '?' }, {
			mapping = cmp.mapping.preset.cmdline(),
			sources = {
				{ name = 'buffer' }
			}
		})

		-- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
		cmp.setup.cmdline(':', {
			mapping = cmp.mapping.preset.cmdline(),
			sources = cmp.config.sources({
				{ name = 'path' }
			}, {
				{ name = 'cmdline' }
			}),
			matching = { disallow_symbol_nonprefix_matching = false }
		})

		-- Set up lspconfig.
		local capabilities = require('cmp_nvim_lsp').default_capabilities()
		-- Replace <YOUR_LSP_SERVER> with each lsp server you've enabled.
		require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
			capabilities = capabilities
		}
	end,
}
