local coq = require('coq')

vim.lsp.enable('svelte', {
  setup = coq.lsp_ensure_capabilities({
    cmd = { "npx", "svelteserver.cmd", "--stdio" },
    filetypes = { "svelte" },
    capabilities = capabilites,
    settings = {},
  })
})
