local M = {}

-- vim.keymap.set('n', 'gg', '<Cmd>echo Hello World!<CR>', { noremap = true, silent = true })

M.get = function()
	return {
		ui = {
			border = "single"
		}
	}
end

return M