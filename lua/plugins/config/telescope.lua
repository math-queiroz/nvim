local M = {}

-- keybinds
local opt = { noremap = true, silent = true }
vim.keymap.set('n', 'gp', '<Cmd>Telescope<CR>', opt)
vim.keymap.set('n', 'gff', '<Cmd>Telescope find_files<CR>', opt)
vim.keymap.set('n', 'gfo', '<Cmd>Telescope oldfiles<CR>', opt)
vim.keymap.set('n', 'gc', '<Cmd>Telescope git_commits<CR>', opt)
vim.keymap.set('n', 'gt', '<Cmd>Telescope git_status<CR>', opt)
vim.keymap.set('n', 'gs', '<Cmd>Telescope git_stash<CR>', opt)

-- pink lazy background fix (https://neovim.discourse.group/t/how-to-configure-floating-window-colors-highlighting-in-0-8/3193)
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#3B4252', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeBorder', {bg='#3B4252'})

M.get = function()
	return {}
end

return M
