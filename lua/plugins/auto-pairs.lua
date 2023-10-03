local M = { 'windwp/nvim-autopairs' }

M.event = 'InsertEnter'

M.config = function()
	require('nvim-autopairs').setup()
end

return M
