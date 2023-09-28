local api = vim.api
local M = {}
M.scope = {}

-- keybindings
vim.g.mapleader = ' '

M.scope['global'] = {
	{ 'n', '<Tab>', '<Cmd>tabn<CR>' },
	{ 'n', '<S-Tab>', '<Cmd>tabp<CR>' },
	{ 'n', '<Esc>', '<Cmd>noh<CR>', { silent = false }},
}

-- plugins
M.scope['comment'] = {
	{ '', '<C-k>', '<Plug>(comment.line.current)<CR>' },
	{ '', '<C-k>', '<Plug>(comment.block)<CR>' },
}

M.scope['telescope'] = {
	{'n', '<Leader>tt', '<Cmd>Telescope<CR>' },
	{'n', '<Leader>ff', '<Cmd>Telescope find_files<CR>' },
	{'n', '<Leader>fo', '<Cmd>Telescope oldfiles<CR>' },
	{'n', '<Leader>gc', '<Cmd>Telescope git_commits<CR>' },
	{'n', '<Leader>gt', '<Cmd>Telescope git_status<CR>' },
	{'n', '<Leader>gs', '<Cmd>Telescope git_stash<CR>' },
}

M.scope['nvim-tree'] = {
	{'n', '<C-w><C-e>', '<Cmd>NvimTreeToggle<CR>' },
}

M.scope['which-key'] = {
	{ '<Leader>w', '<Cmd>WhichKey<CR>', 'Whick key' }
}

-- lsp
M.scope['rust'] = {
	{ 'n', '<F5>', '<Cmd>!cargo run<CR>', { noremap = true }},
	{ 'n', '<F6>', vim.fn.expand('%:r:t')=='main' and '<Cmd>!cargo run --bin %:t:r<CR>' or '<Cmd>!cargo run<CR>', { noremap = true, expr = true }}
}

-- module code
M.register = function(scopeid)
	if M.scope[scopeid] == nil then
		error('No keybinds.scope found with id ' .. scopeid)
	end
	for _, key in pairs(M.scope[scopeid]) do
		local mode, map, action, opt = unpack(key)
		vim.keymap.set(mode, map, action, opt)
	end
end

M.register('global')

return M
