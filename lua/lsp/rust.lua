local coq = require('coq')

vim.lsp.enable('rust_analyzer', {
  setup = function()
    coq.lsp_ensure_capabilities({
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
          checkOnSave = true,
          check = {
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
  end
})

vim.api.nvim_create_autocmd('LspAttach', {
  group = vim.api.nvim_create_augroup('UserLspConfig', { clear = false }),
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client and client.name == 'rust_analyzer' then
      require('keybinds').register('rust_analyzer')
    end
  end
})
