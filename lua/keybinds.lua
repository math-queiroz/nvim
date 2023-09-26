local api = vim.api
-- tabs
vim.keymap.set('n', '<Tab>', '<Cmd>tabn<CR>', { noremap = true })
vim.keymap.set('n', '<S-Tab>', '<Cmd>tabp<CR>', { noremap = true })
-- noh
vim.keymap.set('n', '<Esc>', '<Cmd>noh<CR>', { noremap = true })
-- rust
vim.keymap.set('n', '<F5>', '<Cmd>!cargo run<CR>', { noremap = true })
vim.keymap.set('n', '<F6>', '<Cmd>!cargo run --bin %:t:r<CR>', { noremap = true })
