local tweaks = require('plugins.colorscheme.tweaks')

local M = { 'folke/tokyonight.nvim' }

M.priority = 1000

M.init = function()
  require('util').hide_bg()
  vim.cmd('colorscheme tokyonight')
  tweaks.apply()
end

return M
