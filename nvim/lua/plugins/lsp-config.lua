return {
	{
		"mason-org/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		dependencies = {
			"mason-org/mason.nvim",
			"neovim/nvim-lspconfig",
		},
		opts = {
			ensure_installed = {
				"lua_ls",
				"marksman",
				"bashls",
				"omnisharp",
				"ts_ls",
				"eslint",
				"html",
				"cssls",
				"pylsp",
				"sqls",
				"tailwindcss",
			},
		},
	},

	{
		"neovim/nvim-lspconfig",
		config = function()
			-- Lua
			vim.lsp.config("lua_ls", {
				settings = {
					Lua = {
						diagnostics = {
							globals = { "vim" },
						},
					},
				},
			})
			-- Markdown
			vim.lsp.config("marksman", {})

			-- Bash
			vim.lsp.config("bashls", {})

			-- C#
			vim.lsp.config("omnisharp", {})

			-- TypeScript / JavaScript
			vim.lsp.config("ts_ls", {})

			-- HTML
			vim.lsp.config("html", {})

			-- CSS
			vim.lsp.config("cssls", {})

			-- Python
			vim.lsp.config("pylsp", {})

			-- Sql
			vim.lsp.config("sqls", {})

			-- tailwindcss

			vim.lsp.config("tailwindcss", {})

			-- Autoformat on save
			vim.api.nvim_create_autocmd("BufWritePre", {
				callback = function()
					vim.lsp.buf.format({ async = false })
				end,
			})

			-- Keybinds
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, {})
		end,
	},
}
