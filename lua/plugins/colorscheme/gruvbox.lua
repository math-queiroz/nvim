local M = { 'ellisonleao/gruvbox.nvim' }

M.priority = 1000

M.init = function()
		require('util').hide_bg()
		vim.cmd('colorscheme gruvbox')
end

return M
