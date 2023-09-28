local M = { 'folke/which-key.nvim' }

M.cmd = 'WhichKey'

M.config = function()
	require('keybinds').register('which-key')
	vim.o.timeout = true
	vim.o.timeoutlen = 500
end

return M
