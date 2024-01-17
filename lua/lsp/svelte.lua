local lsp = require('lspconfig')
local coq = require('coq')

lsp.svelte.setup(
	coq.lsp_ensure_capabilities({
		cmd = { "npx", "svelteserver.cmd", "--stdio" },
		filetypes = { "svelte" },
		capabilities = capabilites,
		settings = {},
	})
)

-- vim.api.nvim_create_autocmd('LspAttach', {
-- 	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
-- 		callback = function(ev)
-- 		require('keybinds').register('yamlls')
-- 	end
-- })
