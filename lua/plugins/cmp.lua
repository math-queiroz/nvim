local M = { 'hrsh7th/nvim-cmp' }

M.event = 'InsertEnter'

M.dependencies = {
	'L3MON4D3/LuaSnip',
	'saadparwaiz1/cmp_luasnip',
}

M.config = function()
	require('cmp').setup({
		snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body)
      end
    },
		sources = {
			{ name = 'luasnip' }
		}
	})
end

return M
