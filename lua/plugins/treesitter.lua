local M = { 'nvim-treesitter/nvim-treesitter' }

M.event = 'BufRead'

M.build = ':TSUpdate'

M.opts = {
  highlight = { enable = true },
  indent = { enable = true },
  ensure_installed = {
    "javascript",
    "html",
    "css",
    "markdown",
    "markdown-inline",
    "regex",
  },
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "<C-space>",
      node_incremental = "<C-space>",
      scope_incremental = false,
      node_decremental = "<bs>",
    },
  },
}

M.config = function(_, opts)
  require('nvim-treesitter.install').prefer_git = false
  require('nvim-treesitter.install').compilers = { 'clang', 'gcc' }
  require('nvim-treesitter.configs').setup(opts)
end

return M
