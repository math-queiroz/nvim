local util = require('util')
local api = vim.api

local M = {}

M.scope = {}

-- keybindings
vim.g.mapleader = ' '

M.scope['global'] = {
	-- general
	{ 'n', '<Space>', '<Nop>'},
	{ 'n', '<Esc>', '<Cmd>noh<CR>', { silent = false }},
	{ 'n', '<Tab>', '<Cmd>tabn<CR>' },
	{ 'n', '<S-Tab>', '<Cmd>tabp<CR>' },
	-- move lines
	{ 'n', '<A-j>', ':m .+1<CR>==' },
	{ 'n', '<A-k>', ':m .-2<CR>==' },
	{ 'v', '<A-j>', '<Cmd>m \'>+1<CR>gv=gv\\\'<CR>' },
	{ 'v', '<A-k>', '<Cmd>m \'<-2<CR>gv=gv\\\'<CR>' },
	-- surround delim
	{ 'n', '\'"', 'ciW"<C-r>""<Esc>',    { desc = 'Surround w/ "'}},
	{ 'n', '\'\'', 'ciW\'<C-r>"\'<Esc>', { desc = 'Surround w/ \''}},
	{ 'n', '\'(', 'ciW(<C-r>")<Esc>', { desc = 'Surround w/ ()'}},
	{ 'n', '\'[', 'ciW[<C-r>"]<Esc>', { desc = 'Surround w/ []'}},
	{ 'n', '\'{', 'ciW{<C-r>"}<Esc>', { desc = 'Surround w/ {}'}},
	{ 'n', '\'<', 'ciW<<C-r>"><Esc>', { desc = 'Surround w/ <>'}},
	{ 'v', '\'\'', 'c<Esc>vlp', { desc = 'Remov surround selection'}},
}

-- plugins
M.scope['bufferline'] = {
	{'n', '<Tab>', '<Cmd>BufferLineCycleNext<CR>' },
	{'n', '<S-Tab>', '<Cmd>BufferLineCyclePrev<CR>' },
	{'n', '<Leader>q', '<Cmd>bp<Bar>sp<Bar>bn<Bar>bd!<CR>' },
}

M.scope['comment'] = {
	{ 'n', '<C-k>',	function() return vim.v.count == 0
		and '<Plug>(comment_toggle_linewise_current)'
		or '<Plug>(comment_toggle_linewise_count)'
	end, { expr = true }},
	{ 'v', '<C-k>', '<Plug>(comment_toggle_blockwise_visual)<CR>' },
}

M.scope['cmp'] = {
	{ 'n', '<C-k>', '<Plug>(comment_toggle_linewise_current)<CR>' },
}

M.scope['gitsigns'] = {
	{ 'n', '<Leader>gd', '<Cmd>Gitsigns diffthis<CR>' },
	{ 'n', '<Leader>gh', '<Cmd>Gitsigns toggle_linehl<CR><Cmd>Gitsigns toggle_deleted<CR>' },
	{ 'n', '<Leader>gj', '<Cmd>Gitsigns next_hunk<CR>' },
	{ 'n', '<Leader>gk', '<Cmd>Gitsigns prev_hunk<CR>' },
	{ 'n', '<Leader>gy', '<Cmd>Gitsigns stage_hunk<CR>' },
	{ 'n', '<Leader>gr', '<Cmd>Gitsigns reset_hunk<CR>' },
	{ 'n', '<Leader>ga', '<Cmd>Gitsigns stage_buffer<CR>' },
}

M.scope['nvim-tree'] = {
	{'n', '<C-w><C-e>', '<Cmd>NvimTreeToggle<CR>' },
	{'n', '<C-w>e', '<Cmd>NvimTreeToggle<CR>' },
}

M.scope['telescope'] = {
	{'n', '<Leader>tt', '<Cmd>Telescope<CR>' },
	{'n', '<Leader>ff', '<Cmd>Telescope find_files<CR>' },
	{'n', '<Leader>fo', '<Cmd>Telescope oldfiles<CR>' },
	{'n', '<Leader>gc', '<Cmd>Telescope git_commits<CR>' },
	{'n', '<Leader>gt', '<Cmd>Telescope git_status<CR>' },
	{'n', '<Leader>gs', '<Cmd>Telescope git_stash<CR>' },
}

M.scope['which-key'] = {
	{'n', '<Leader>w', '<Cmd>WhichKey<CR>' },
}

-- lsp
M.scope['rust'] = {
	{ 'n', '<F5>', '<Cmd>!cargo run<CR>', { noremap = true }},
	{ 'n', '<F6>', '<Cmd>!cargo run --bin %:t:r<CR>', { noremap = true }}
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
