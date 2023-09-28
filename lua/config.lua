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
