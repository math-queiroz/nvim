local M = {'arkav/lualine-lsp-progress'}

M.component = {
	'lsp_progress',
	display_components = { 'lsp_client_name', 'spinner' },
	-- colors = {
	-- 	percentage  = colors.cyan,
	-- 	title  = colors.cyan,
	-- 	message  = colors.cyan,
	-- 	spinner = colors.cyan,
	-- 	lsp_client_name = colors.magenta,
	-- 	use = true,
	-- },
	separators = {
		component = ' ',
		progress = ' | ',
		message = { pre = '(', post = ')'},
		percentage = { pre = '', post = '%% ' },
		title = { pre = '', post = ': ' },
		lsp_client_name = { pre = '', post = '' },
		spinner = { pre = '', post = '' },
		message = { commenced = 'In Progress', completed = 'Completed' },
	},
	display_components = {{ 'title' }, 'lsp_client_name', 'spinner' },
	timer = { progress_enddelay = 500, spinner = 1000, lsp_client_name_enddelay = 5000 },
	spinner_symbols = { '󰪞 ', '󰪟 ', '󰪠 ', '󰪡  ', '󰪢 ', '󰪣 ', '󰪤 ', '󰪥 ' },
}

return M
