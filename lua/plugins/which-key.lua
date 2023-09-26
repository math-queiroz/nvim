local M = { 'folke/which-key.nvim' }

M.config = function()
	vim.o.timeout = true
	vim.o.timeoutlen = 500
end

return M
