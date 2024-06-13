local M = { 'lewis6991/gitsigns.nvim' }

M.lazy = false 

M.init = function(_, opts)
  require('keybinds').register('gitsigns')
  require('gitsigns').setup(opts)
end

return M
