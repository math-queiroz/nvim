local lsp = require('lspconfig')
local coq = require('coq')

lsp.denols.setup {
  coq.lsp_ensure_capabilities({
    on_attach = on_attach,
    root_dir = lsp.util.root_pattern("deno.json", "deno.jsonc"),
  })
}

lsp.ts_ls.setup(
  coq.lsp_ensure_capabilities({
    on_attach = on_attach,
    cmd = { 'deno', 'lsp' },
    filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact'},
    init_options = { enable = true, lint = true, unstable = true },
    root_dir = lsp.util.root_pattern("package.json"),
    single_file_support = false,
  })
)
