local coq = require('coq')

vim.lsp.enable('gopls', {
  setup = coq.lsp_ensure_capabilities({
    cmd = { 'gopls', '-remote=auto' },
    filetypes = { 'go' },
    settings = {
      ["build.templateExtensions"] = { "tmpl" },
    }
  }),
})
