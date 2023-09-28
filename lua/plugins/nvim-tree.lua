local M = { 'nvim-tree/nvim-tree.lua' }

M.cmd = 'NvimTreeToggle'

M.init = function()
	require('keybinds').register('nvim-tree')
end

M.config = function()
	require('nvim-tree').setup({
		sort_by = 'case_sensitive',
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
