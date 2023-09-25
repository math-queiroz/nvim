local M = {}

vim.keymap.set('n', '<C-w><C-e>', '<Cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })

M.get = function()
	require("nvim-tree").setup({
		sort_by = "case_sensitive",
		view = {
			width = 30,
		},
		renderer = {
			group_empty = true,
		},
		filters = {
			dotfiles = true,
		},
	})
end

return M