local lsp = require('lspconfig')
local coq = require('coq')

lsp.ts_ls.setup(
  coq.lsp_ensure_capabilities({
    filetypes = { 'javascript', 'typescript', 'typescriptreact', 'html' }
  })
)

lsp.tailwindcss.setup(
  coq.lsp_ensure_capabilities({
    filetypes = { 'typescriptreact' }
  })
)

