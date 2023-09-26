local M = { 'lewis6991/gitsigns.nvim' }

M.lazy = false 

M.init = function()
	require('gitsigns').setup({})
end

return M
