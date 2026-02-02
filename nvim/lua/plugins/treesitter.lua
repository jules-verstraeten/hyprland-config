return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    -- We checken eerst of de module wel echt bestaat om de crash te voorkomen
    local status_ok, configs = pcall(require, "nvim-treesitter.configs")
    if not status_ok then
      return
    end

    configs.setup({
      ensure_installed = { "lua", "vim", "vimdoc", "query", "markdown", "markdown_inline" },
      auto_install = true,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      indent = { enable = true },
    })
  end,
}
    -- opts = {
    --   ensure_installed = { "lua", "javascript", "html" },
    --   highlight = { enable = true },
    --   indent = { enable = true },
    --   auto_install = true,
    -- },
    -- config = function(_, opts)
    --   local ok, configs = pcall(require, "nvim-treesitter.configs")
    --   if not ok then
    --     vim.notify("nvim-treesitter not found!", vim.log.levels.WARN)
    --     return
    --   end
    --
    --   configs.setup(opts)
    -- end,
