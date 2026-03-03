return {
	"L3MON4D3/LuaSnip",
	dependencies = {
		{ "mlaursen/vim-react-snippets", opts = {} },
		{ "rafamadriz/friendly-snippets" },
		{ "jparise/vim-react-snippets" },
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()
	end,
}
