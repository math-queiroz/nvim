local M = { 'hrsh7th/nvim-cmp' }

M.event = 'InsertEnter'

M.dependencies = {
	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
}

M.config = function()
	require('keybinds').register('cmp')

	local cmp = require('cmp')
	cmp.setup({
		snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end
    },
		window = {
			completion = cmp.config.window.bordered(),
		},
		mapping = cmp.mapping.preset.insert({
			['<Tab>'] = cmp.mapping.confirm({select = true}),
	  	-- navigate between completion item
			['<M-k>'] = cmp.mapping.select_prev_item(),
			['<M-j>'] = cmp.mapping.select_next_item(),
			-- scoll docs
			['<M-u>'] = cmp.mapping.scroll_docs(-4),
			['<M-d>'] = cmp.mapping.scroll_docs(4),
			-- toggle completion
			['<M-i>'] = cmp.mapping.abort(),
    }),
		sources = {
			{ name = 'nvim_lsp' },
			{ name = 'luasnip' },
			{ name = 'buffer' },
		}
	})
end

return M
