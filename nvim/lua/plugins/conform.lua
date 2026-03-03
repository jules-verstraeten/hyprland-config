return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" }, -- Start de plugin vlak voordat je opslaat
	cmd = { "ConformInfo" },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			-- Gebruik prettier voor alles wat met web te maken heeft
			javascript = { "prettierd", "prettier", stop_after_first = true },
			typescript = { "prettierd", "prettier", stop_after_first = true },
			javascriptreact = { "prettierd", "prettier", stop_after_first = true },
			typescriptreact = { "prettierd", "prettier", stop_after_first = true },
		},
		format_on_save = {
			-- Deze opties bepalen hoe hij formatteert
			timeout_ms = 500,
			lsp_fallback = true, -- Als er geen Prettier is, gebruik dan de LSP
		},
	},
}
