local coq = require('coq')

vim.lsp.config('denols', {
  setup = coq.lsp_ensure_capabilities({
    on_attach = on_attach,
    root_markers = { "deno.json", "deno.jsonc" },
  })
})

vim.lsp.config('ts_ls', {
  setup = coq.lsp_ensure_capabilities({
    on_attach = on_attach,
    cmd = { 'deno', 'lsp' },
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'},
    init_options = { enable = true, lint = true, unstable = true },
    root_markers = { "package.json" },
    single_file_support = false,
  })
})
