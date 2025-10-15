local transparency = require('plugins.colorscheme.transparency')

local M = { 'folke/tokyonight.nvim' }

M.priority = 1000

M.init = function()
    require('util').hide_bg()
    vim.cmd('colorscheme tokyonight')
    transparency.apply()
end

return M
