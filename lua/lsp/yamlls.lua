local lsp = require('lspconfig')
local coq = require('coq')

lsp.yamlls.setup(
	coq.lsp_ensure_capabilities({
		cmd = { 'yaml-language-server', '--stdio' },
		filetypes = { 'yaml', 'yml' },
		settings = {
			['yaml'] = {
				completion = true,
				validate = true,
				schemas = {
					kubernetes = "*",
					["http://json.schemastore.org/prettierrc"] = ".prettierrc.{yml,yaml}",
					["https://json.schemastore.org/dependabot-v2"] = ".github/dependabot.{yml,yaml}",
					["https://json.schemastore.org/gitlab-ci"] = "*gitlab-ci*.{yml,yaml}",
					["https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json"] = "*docker-compose*.{yml,yaml}",
				},
			}
		}
	})
)

-- vim.api.nvim_create_autocmd('LspAttach', {
-- 	group = vim.api.nvim_create_augroup('UserLspConfig', {}),
-- 		callback = function(ev)
-- 		require('keybinds').register('yamlls')
-- 	end
-- })
