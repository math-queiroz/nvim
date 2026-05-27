local M = { 'nickjvandyke/opencode.nvim' }

M.dependencies = { 'folke/snacks.nvim' }

M.lazy = false

M.opts = {
  panel = {
    fixed_width = true,
  }
}

M.config = function(_, opts)
  require('keybinds').register('opencode')
end

return M
