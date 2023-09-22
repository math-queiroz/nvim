local plugins = {
	{
		"folke/which-key.nvim",
		lazy = false,
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 300
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
		lazy = false,
		init = function()
			local opts = require("plugins.config.lualine")
			require("lualine").setup(opts.get())
		end
	},
	{
		"nvim-tree/nvim-tree.lua",
		lazy = true,
		init = function()
			local opts = require("plugins.config.nvim-tree")
			require("nvim-tree").setup(opts.get())
		end
	},
	{
		"numToStr/Comment.nvim",
		lazy = false,
		init = function()
			local opts = require("plugins.config.comment")
			require("nvim-tree").setup(opts.get())
		end,
	}
}

local opts = {
	checker = {
		enabled = true
	}
}

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(plugins, opts)
