local M = {}

M.get = function()
	return {
		toggler = {
			line = '<C-k>',
			block = '<C-j>',
		}
	}
end

return M
