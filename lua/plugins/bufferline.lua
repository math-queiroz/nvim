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
					separator = true
				},
			},
			custom_filter = function(buf_number, buf_numbers)
        return vim.fn.bufname(buf_number):sub(1,5) ~= "term:"
			end
		}
	})
end

return M
