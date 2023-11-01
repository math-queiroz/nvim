local plugins = {
	-- colorscheme
	require('plugins.colorscheme.gruvbox'),
	-- core
	require('plugins.auto-pairs'),
	require('plugins.bufferline'),
	require('plugins.cmp'),
	require('plugins.coq'),
	require('plugins.colorizer'),
	require('plugins.comment'),
	require('plugins.gitsigns'),
	require('plugins.lspconfig'),
	require('plugins.lualine'),
	require('plugins.mason'),
	require('plugins.nvim-tree'),
	require('plugins.telescope'),
	require('plugins.treesitter'),
	require('plugins.which-key'),
}

for _, dep in pairs(require('plugins.dependencies')) do
	table.insert(plugins, dep)
end

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		'git',
		'clone',
		'--filter=blob:none',
		'https://github.com/folke/lazy.nvim.git',
		'--branch=stable', -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup(plugins, {
	defaults = { lazy = true },
	install = { colorscheme = { 'default' } },
	ui = { border = 'single' }
})
