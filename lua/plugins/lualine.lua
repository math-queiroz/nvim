local M = { 'nvim-lualine/lualine.nvim' }

M.dependencies = 'arkav/lualine-lsp-progress'

M.event = 'UIEnter'

M.init = function()
	local colors = {
		darkgray = '#1C161d', gray    = '#727169', innerbg = nil,
		outerbg  = nil,			  normal  = '#458588', insert  = '#D3869B',
		visual   = '#ffa066', replace = '#e46876', command = '#FE8019',
	}

	local theme = {
		inactive = {
			a = { fg = colors.gray, bg = colors.outerbg, gui = 'bold' },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		visual = {
			a = { fg = colors.darkgray, bg = colors.visual, gui = 'bold' },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		replace = {
			a = { fg = colors.darkgray, bg = colors.replace, gui = 'bold' },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		normal = {
			a = { fg = colors.darkgray, bg = colors.normal, gui = 'bold' },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		insert = {
			a = { fg = colors.darkgray, bg = colors.insert, gui = 'bold' },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
		command = {
			a = { fg = colors.darkgray, bg = colors.command, gui = 'bold' },
			b = { fg = colors.gray, bg = colors.outerbg },
			c = { fg = colors.gray, bg = colors.innerbg },
		},
	}

	local lualine = require('lualine')
	local lsp_progress = require('plugins.dependencies.lsp-progress').component

	lualine.setup({
		options = {
			theme = theme,
			icons_enabled = true,
			-- component_separators = { left = '', right = '' },
			component_separators = { left = '|', right = '|' },
			-- section_separators = { left = ' ', right = ' '  },
			-- section_separators = { left = '', right = ''},
			section_separators = { left = ' ', right = ' ' },
			disabled_filetypes = {
				statusline = {},
				winbar = {},
			},
			ignore_focus = {},
			always_divide_middle = true,
			globalstatus = true,
			refresh = {
				statusline = 1000,
				tabline = 1000,
				winbar = 1000,
			}
		},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'branch', 'diff', 'diagnostics'},
			lualine_c = {},
			lualine_x = {lsp_progress, 'filename'},
			lualine_y = {'encoding'},
			lualine_z = {'location'}
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = {'filename'},
			lualine_x = {'location'},
			lualine_y = {},
			lualine_z = {}
		},
		tabline = {},
		winbar = {},
		inactive_winbar = {},
		extensions = {}
	}) 

end

return M
