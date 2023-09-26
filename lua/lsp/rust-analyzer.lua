require('lspconfig').rust_analyzer.setup({
	cmd = { 'rust-analyzer' },
  filetypes = { 'rust', 'rs' },
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
  }
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', {}),
  callback = function(ev)
		vim.keymap.set('n', '<F5>', '<Cmd>!cargo run<CR>', { noremap = true })
		vim.keymap.set('n', '<F6>', '<Cmd>!cargo run --bin %:t:r<CR>', { noremap = true })
	end
})

return M
