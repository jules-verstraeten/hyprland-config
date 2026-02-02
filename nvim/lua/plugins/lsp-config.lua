return {
  {
    "mason-org/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    opts = {},
    dependencies = {
      { 
        "mason-org/mason.nvim", 
        opts = {} 
      },
      "neovim/nvim-lspconfig",
    },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "lua_ls" }
      })
    end,
  }, 
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.lsp.config("lua_ls", {
        settings = {
          Lua = {
            diagnostic = {
              globals = { "vim" },
            },
          },
        },
      })

      vim.lsp.enable("lua_ls")
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
    end,
  }
}
