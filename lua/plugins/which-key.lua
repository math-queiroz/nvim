local M = { 'folke/which-key.nvim' }

M.cmd = 'WhichKey'

M.init = function()
	require('keybinds').register('which-key')
end

M.config = function()
	vim.o.timeout = true
	vim.o.timeoutlen = 500
end

return M
