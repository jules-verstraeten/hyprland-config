return { 
  "catppuccin/nvim", 
  name = "catppuccin", 
  priority = 1000,
  lazy = false,
  config = function()
    vim.o.termguicolors = true
    require("catppuccin").setup({
      flavor = "latte",
      transparent_background = false,
      integrations = {
        telescope = true,
        treesitter = true,
        cmp = true,
      },
    })
  end,
}

