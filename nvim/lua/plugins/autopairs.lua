return {
	"windwp/nvim-autopairs",
	event = "InsertEnter",
	config = function()
		require("nvim-autopairs").setup({
			check_ts = true,
			ts_config = {
				javascript = { "string", "template_string" },
				typescript = { "string", "template_string" },
				typescriptreact = { "string", "template_string", "jsx_element" },
				html = { "string" },
			},
			fast_wrap = {},
		})
	end,
	-- use opts = {} for passing setup options
	-- this is equivalent to setup({}) function
}
