require('lsp.rust-analyzer')
require('lsp.yamlls')

require('lspconfig.ui.windows').default_options.border = 'single'

vim.diagnostic.config({
  virtual_text = false,
	float = {
		border = 'rounded'
	}
})

-- Show line diagnostics automatically in hover window
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
