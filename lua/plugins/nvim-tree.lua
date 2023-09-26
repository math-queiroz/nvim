local M = { 'nvim-tree/nvim-tree.lua' }

M.keys = {
	{ '<C-w><C-e>', '<Cmd>NvimTreeToggle<CR>', 'Toggle NvimTree'}
}

M.config = function()
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
