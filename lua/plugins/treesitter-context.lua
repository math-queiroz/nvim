local M = { 'nvim-treesitter/nvim-treesitter-context' }

M.event = 'BufRead'

M.opts = {
  enable = true,
  max_lines = 3
}

return M
