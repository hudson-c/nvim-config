return {
	"startup-nvim/startup.nvim",
	dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
	config = function()
		require "startup".setup({
			section_1 = {
				-- "text" -> text that will be displayed
				-- "mapping" -> create mappings for commands that can be used
				-- use mappings.execute_command on the commands to execute
				-- "oldfiles" -> display oldfiles (can be opened with mappings.open_file/open_file_split)
				type = "text", -- can be mapping or oldfiles
				oldfiles_directory = false, -- if the oldfiles of the current directory should be displayed
				align = "center", -- "center", "left" or "right"
				fold_section = false, -- whether to fold or not
				-- if < 1 fraction of screen width
				-- if > 1 numbers of column
				margin = 5, -- the margin for left or right alignment
				-- type of content depends on `type`
				-- "text" -> a table with string or a function that requires a function that returns a table of strings
				-- "mapping" -> a table with tables in the format:
				-- {
					--   {<displayed_command_name>, <command>, <mapping>}
					--   {<displayed_command_name>, <command>, <mapping>}
					-- }
					-- e.g. {" Find File", "Telescope find_files", "<leader>ff" }
					-- "oldfiles" -> ""
					content = {
						"__/\\\\\\________/\\\\\\_________________________/\\\\\\_____________________________________________________________        ",
						" _\\/\\\\\\_______\\/\\\\\\________________________\\/\\\\\\_____________________________________________________________       ",
						"  _\\/\\\\\\_______\\/\\\\\\________________________\\/\\\\\\_____________________________________________________________      ",
						"   _\\/\\\\\\\\\\\\\\\\\\\\\\\\\\\\\\___/\\\\\\____/\\\\\\_________\\/\\\\\\____/\\\\\\\\\\\\\\\\\\\\______/\\\\\\\\\\______/\\\\/\\\\\\\\\\\\________/\\\\\\\\\\\\\\\\_     ",
						"    _\\/\\\\\\/////////\\\\\\__\\/\\\\\\___\\/\\\\\\____/\\\\\\\\\\\\\\\\\\___\\/\\\\\\//////_____/\\\\\\///\\\\\\___\\/\\\\\\////\\\\\\_____/\\\\\\//////__    ",
						"     _\\/\\\\\\_______\\/\\\\\\__\\/\\\\\\___\\/\\\\\\___/\\\\\\////\\\\\\___\\/\\\\\\\\\\\\\\\\\\\\___/\\\\\\__\\//\\\\\\__\\/\\\\\\__\\//\\\\\\___/\\\\\\_________   ",
						"      _\\/\\\\\\_______\\/\\\\\\__\\/\\\\\\___\\/\\\\\\__\\/\\\\\\__\\/\\\\\\___\\////////\\\\\\__\\//\\\\\\__/\\\\\\___\\/\\\\\\___\\/\\\\\\__\\//\\\\\\________  ",
						"       _\\/\\\\\\_______\\/\\\\\\__\\//\\\\\\\\\\\\\\\\\\___\\//\\\\\\\\\\\\\\/\\\\___/\\\\\\\\\\\\\\\\\\\\___\\///\\\\\\\\\\/____\\/\\\\\\___\\/\\\\\\___\\///\\\\\\\\\\\\\\\\_ ",
						"        _\\///________\\///____\\/////////_____\\///////\\//___\\//////////______\\/////______\\///____\\///______\\////////__",
					},
					highlight = "String", -- highlight group in which the section text should be highlighted
					default_color = "#FF0000", -- a hex color that gets used if you don't specify `highlight`
				},
				section_2 = {
					-- "text" -> text that will be displayed
					-- "mapping" -> create mappings for commands that can be used
					-- use mappings.execute_command on the commands to execute
					-- "oldfiles" -> display oldfiles (can be opened with mappings.open_file/open_file_split)
					type = "mapping", -- can be mapping or oldfiles
					oldfiles_directory = false, -- if the oldfiles of the current directory should be displayed
					align = "center", -- "center", "left" or "right"
					fold_section = false,
					-- if < 1 fraction of screen width
					-- if > 1 numbers of column
					margin = 5, -- the margin for left or right alignment
					-- type of content depends on `type`
					-- "text" -> a table with string or a function that requires a function that returns a table of strings
					-- "mapping" -> a table with tables in the format:
					-- {
						--   {<displayed_command_name>, <command>, <mapping>}
						--   {<displayed_command_name>, <command>, <mapping>}
						-- }
						-- e.g. {" Find File", "Telescope find_files", "<leader>ff" }
						-- "oldfiles" -> ""
						content = {
							{"		Find File", "Telescope find_files", "<leader>ff" },
							{"		Find Word", "Telescope live_grep", "<leader>lg" },
							{"		File Browser", "Telescope file_browser", "<leader>fb" },
							{"		Project Browser", ":lua require'telescope'.extensions.project.project{}", "<leader>po" },
							{"		Colorschemes", "Telescope colorscheme", "<leader>cs" },
						},
						highlight = "String", -- highlight group in which the section text should be highlighted
						default_color = "#FF0000", -- a hex color that gets used if you don't specify `highlight`
					},
					options = {
						mapping_keys = true, -- display mapping (e.g. <leader>ff)

						-- if < 1 fraction of screen width
						-- if > 1 numbers of column
						cursor_column = 0.5,

						empty_lines_between_mappings = true, -- add an empty line between mapping/commands
						disable_statuslines = true, -- disable status-, buffer- and tablines
						paddings = {1,2}, -- amount of empty lines before each section (must be equal to amount of sections)
					},
					mappings = {
						execute_command = "<CR>",
						open_help = "?",
					},
					parts = {"section_1", "section_2"} -- all sections in order
				})
			end
		}
