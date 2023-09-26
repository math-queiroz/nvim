local M = { 'williamboman/mason.nvim' }

M.cmd = 'Mason'

M.config = function()
	require('mason').setup({
		ui = { border = 'single' }
	})
end

return M
