local M = { 'numToStr/Comment.nvim' }

M.lazy = false

M.init = function(_, opts)
	require('keybinds').register('comment')
	require('Comment').setup(opts)
end

return M
