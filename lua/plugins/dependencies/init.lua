return {
	-- async
	{'nvim-lua/plenary.nvim'},
	-- snippets
	{'ms-jpq/coq.artifacts'},
	{'L3MON4D3/LuaSnip', dependencies = 'rafamadriz/friendly-snippets'},
	{'hrsh7th/cmp-buffer'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'rafamadriz/friendly-snippets', lazy = false},
	-- lualine
	{'arkav/lualine-lsp-progress'},
	{'saadparwaiz1/cmp_luasnip', build = 'make install_jsregexp'},
}

