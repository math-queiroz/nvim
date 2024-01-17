local M = { 'nvim-telescope/telescope.nvim' }

M.dependencies = 'nvim-lua/plenary.nvim'

M.cmd = 'Telescope'

M.config = function()
	require('keybinds').register('telescope')
end

return M
