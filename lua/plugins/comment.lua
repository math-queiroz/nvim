local M = { 'numToStr/Comment.nvim' }

M.lazy = false

M.init = function()
	require('keybinds').register('comment')
	require('Comment').setup()
end

return M
