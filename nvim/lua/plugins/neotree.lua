return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		"nvim-tree/nvim-web-devicons", -- optional, but recommended
	},
	lazy = false, -- neo-tree will lazily load itself
	keys = {
		{ "<C-n>", "<cmd>Neotree toggle<cr>", desc = "Neo-tree Toggle" },
	},
	opts = {
		close_if_last_window = true, -- Sluit Neo-tree als het de laatste is
		filesystem = {
			-- Zorgt dat Neo-tree sluit nadat je een bestand opent
			window = {
				mappings = {
					["<cr>"] = "open_then_close", -- Open bestand met Enter en sluit tree
				},
			},
			commands = {
				open_then_close = function(state)
					local node = state.tree:get_node()
					if node.type == "file" then
						require("neo-tree.sources.filesystem.commands").open(state)
						require("neo-tree.command").execute({ action = "close" })
					else
						require("neo-tree.sources.filesystem.commands").open(state)
					end
				end,
			},
		},
	},
}
