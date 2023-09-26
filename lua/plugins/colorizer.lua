local M = { 'norcalli/nvim-colorizer.lua' }

M.ft = 'css'

M.config = function()
	require('colorizer').setup({
		'*';
  })
end

return M
