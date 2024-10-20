return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED
		--
		-- basic telescope configuration
		local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local file_paths = {}
			for _, item in ipairs(harpoon_files.items) do
				table.insert(file_paths, item.value)
			end

			require("telescope.pickers").new({}, {
				prompt_title = "Harpoon",
				finder = require("telescope.finders").new_table({
					results = file_paths,
				}),
				previewer = conf.file_previewer({}),
				sorter = conf.generic_sorter({}),
			}):find()
		end

		vim.keymap.set("n", "<C-e>", function() toggle_telescope(harpoon:list()) end,
		{ desc = "Open harpoon window" })

		vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc="add" })
		vim.keymap.set("n", "<leader>hl", function() toggle_telescope(harpoon:list()) end, { desc="list" })

		vim.keymap.set("n", "<leader>h1", function() harpoon:list():select(1) end, { desc="select 1st item" })
		vim.keymap.set("n", "<leader>h2", function() harpoon:list():select(2) end, { desc="select 2nd item" })
		vim.keymap.set("n", "<leader>h3", function() harpoon:list():select(3) end, { desc="select 3rd item" })
		vim.keymap.set("n", "<leader>h4", function() harpoon:list():select(4) end, { desc="select 4th item" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<leader>hp", function() harpoon:list():prev() end, { desc="previous" })
		vim.keymap.set("n", "<leader>hn", function() harpoon:list():next() end, { desc="add" })

	end,
}
