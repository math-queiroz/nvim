local M = { 'ms-jpq/coq_nvim' }

M.dependencies = { 'ms-jpq/coq.artifacts' }

M.init = function()
	require('coq')
	vim.cmd('COQnow -s')
end

return M
