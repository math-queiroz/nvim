local M = { 'williamboman/mason.nvim' }

-- vim.keymap.set('n', 'gg', '<Cmd>echo Hello World!<CR>', { noremap = true, silent = true })

M.init = function()
	require('mason').setup({
		ui = { border = "single" }
	})
end

return M
