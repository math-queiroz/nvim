local M = { 'numToStr/Comment.nvim' }

M.keys = { 
	{ '<C-k>', '<Nop>', 'Comment line' },
	{ '<C-j>', '<Nop>', 'Comment block' },
}

M.config = function()
	require('Comment').setup({
		toggler = {
			line = '<C-k>',
			block = '<C-j>',
		},
		opleader = {
			line = '<C-k>',
			block = '<C-j>',
		}
	})
end

return M
