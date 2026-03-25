local tweaks = require('plugins.colorscheme.tweaks')

local M = { 'ellisonleao/gruvbox.nvim' }

M.priority = 1000

M.init = function()
  require('util').hide_bg()
  vim.cmd('colorscheme gruvbox')
  tweaks.apply()
end

return M
