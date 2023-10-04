local M = { 'norcalli/nvim-colorizer.lua' }

M.event = 'BufRead'

M.config = function()
	require('colorizer').setup({'*'})
end

return M
