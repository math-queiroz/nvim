local M = { 'akinsho/nvim-bufferline.lua' }

M.event = 'BufAdd'

M.config = function()
	require('keybinds').register('bufferline')
	require('bufferline').setup({
		options = {
			offsets = {
					{
							filetype = 'NvimTree',
							text = '',
							highlight = 'Directory',
							separator = true -- use a "true" to enable the default, or set your own character
					}
			}
		}
	})
end

return M
