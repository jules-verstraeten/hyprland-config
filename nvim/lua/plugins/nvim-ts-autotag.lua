return {
	"windwp/nvim-ts-autotag",
	dependencies = "nvim-treesitter/nvim-treesitter",
	event = { "BufReadPost", "BufNewFile" },
	config = function()
		require("nvim-ts-autotag").setup({
			opts = {
				-- Hier zet je de talen waarin hij moet werken
				enable_close = true, -- <h1> -> </h1>
				enable_rename = true, -- Verander <h1> naar <h2>, de sluit-tag verandert mee
				enable_close_on_slash = false, -- Typ </ om de tag te sluiten
			},
			-- Zorg dat typescriptreact (voor .tsx) erbij staat
			per_filetype = {
				["typescriptreact"] = {
					enable_close = true,
				},
				["javascriptreact"] = {
					enable_close = true,
				},
			},
		})
	end,
}
