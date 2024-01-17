local M = { 'williamboman/mason.nvim' }

M.event = 'InsertEnter'

M.opts = {
	highlight = { enable = true },
	indent = { enable = true },
	ensure_installed = {
		"json",
		"lua",
		"luadoc",
		"markdown",
		"markdown_inline",
		"regex",
		"typescript",
		"vim",
		"vimdoc",
		"yaml",
	},
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<C-space>",
			node_incremental = "<C-space>",
			scope_incremental = false,
			node_decremental = "<bs>",
		},
	},
}

return M
