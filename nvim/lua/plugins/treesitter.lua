return {
	"nvim-treesitter/nvim-treesitter",
	version = false, -- last release is way too old
	build = ":TSUpdate",
	event = { "BufReadPost", "BufNewFile" },
	lazy = vim.fn.argc(-1) == 0,
	opts = {
		ensure_installed = {
			"tsx",
			"typescript",
			"javascript",
			"html",
			"css",
			"scss",
			"lua",
			"vim",
			"vimdoc",
			"query",
		},
		highlight = { enable = true },
		indent = { enable = true },
		auto_install = true,
	},
	config = function(_, opts)
		-- We use pcall here so that if something is wrong with the
		-- installation, it doesn't break Neo-tree or your editor.
		local ok, configs = pcall(require, "nvim-treesitter.configs")
		if ok then
			configs.setup(opts)
		end
	end,
}
