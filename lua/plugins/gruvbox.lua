local M = { 'ellisonleao/gruvbox.nvim' }

M.priority = 1000

-- M.keys = { 'gg', '<Cmd>echo Hello World!<CR>', 'desc' }

M.init = function()
		require('util').hide_bg()
		vim.cmd('colorscheme gruvbox')
end

return M
