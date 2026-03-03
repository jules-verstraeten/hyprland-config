require("config.lazy")

vim.g.deprecation_warnings = false

vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

vim.opt.number = true
vim.opt.relativenumber = true

vim.keymap.set("i", "jk", "<Esc>", { silent = true })

vim.cmd([[
  filetype plugin indent on
]])

vim.filetype.add({
	extensions = {
		tsx = "typescriptreact",
	},
})
