local M = { 'hrsh7th/nvim-cmp' }

M.config = function()
	require('cmp').setup({
		snippet = {
      expand = function(args)
        require'luasnip'.lsp_expand(args.body)
      end
    },
		sources = {
			{ name = 'luasnip'}
		}
	})
end

return M
