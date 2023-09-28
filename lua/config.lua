-- line numbers
vim.opt.relativenumber = true
vim.opt.number = true

-- tab
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- hide tilde on empty lines
vim.opt.fillchars='eob: '

-- termguicolors (for colorizer plugin)
if vim.fn.has("termguicolors") then
	vim.opt.termguicolors = true
end

-- pink lazy background fix (https://neovim.discourse.group/t/how-to-configure-floating-window-colors-highlighting-in-0-8/3193)
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#3B4252', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeBorder', {bg='#3B4252'})
