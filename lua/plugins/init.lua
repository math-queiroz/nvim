local plugins = {
	-- dependencies
	{ "nvim-lua/plenary.nvim" },
	-- core
	{
		"folke/which-key.nvim",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
	},
	{
		"nvim-lualine/lualine.nvim",
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
		init = function()
			local opts = require("plugins.config.comment")
			require("Comment").setup(opts.get())
		end,
	},
	{
		"nvim-telescope/telescope.nvim",
		init = function()
			local opts = require("plugins.config.telescope")
			require("telescope").setup(opts.get())
		end,
	},
	{
		"williamboman/mason.nvim",
		init = function()
			local opts = require("plugins.config.mason")
			require("mason").setup(opts.get())
		end,
	},
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

require("lazy").setup(plugins, {
	install = {
		colorscheme = { "default" }
	},
	ui = {
		border = "single",
	}
})
