local M = { 'folke/which-key.nvim' }

M.keys = {
	{ 'gk', '<Cmd>WhichKey<CR>', 'Whick key' }
}

M.cmd = 'WhichKey'

M.config = function()
	vim.o.timeout = true
	vim.o.timeoutlen = 500
end

return M
