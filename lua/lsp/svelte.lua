local coq = require('coq')

vim.lsp.enable('svelte', {
  setup = {
    cmd = { "npx", "svelteserver.cmd", "--stdio" },
    filetypes = { "svelte" },
    capabilities = capabilites,
    settings = {},
  }
})
