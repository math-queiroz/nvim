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
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-i>'] = cmp.mapping.abort(),
				['<C-y>'] = cmp.mapping.confirm({ select = true }),
    }),	sources = {
			{ name = 'nvim_lsp' },
			{ name = 'luasnip' },
			{ name = 'buffer' },
		}
	})

	cmp.setup.cmdline({ '/', '?' }, {
		mapping = cmp.mapping.preset.cmdline(),
		sources = {
			{ name = 'buffer' }
		},
	})

  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })
end

return M
