local coq = require('coq')

vim.lsp.enable('gopls', {
  setup = {
    cmd = { 'gopls', '-remote=auto' },
    filetypes = { 'go' },
    settings = {
      ["build.templateExtensions"] = { "tmpl" },
    }
  }
})
