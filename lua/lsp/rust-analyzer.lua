local capabilites = require("cmp_nvim_lsp").default_capabilities()

require('lspconfig').rust_analyzer.setup({
	cmd = { 'rust-analyzer' },
  filetypes = { 'rust', 'rs' },
	capabilities = capabilites,
	flags = {
		debounce_text_changes = 150
	},
  settings = {
    ['rust-analyzer'] = {
      cargo = {
        allFeatures = true,
      },
      checkOnSave = {
        allFeatures = true,
        command = 'clippy',
      },
      procMacro = {
        ignored = {
          ['async-trait'] = { 'async_trait' },
          ['napi-derive'] = { 'napi' },
          ['async-recursion'] = { 'async_recursion' },
        },
      },
    },
  },
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
		require('keybinds').register('rust')
	end
})
