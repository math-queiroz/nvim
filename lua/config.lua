-- disable mouse
vim.opt.mouse = ""

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- tab
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.list = true
vim.opt.listchars = 'tab:⍿ '

-- hide tilde on empty lines
vim.opt.fillchars = 'eob: '

-- termguicolors (for colorizer plugin)
if vim.fn.has('termguicolors') then
  vim.opt.termguicolors = true
end

-- clipboard
vim.opt.clipboard = 'unnamedplus'

-- pink lazy background fix (https://neovim.discourse.group/t/how-to-configure-floating-window-colors-highlighting-in-0-8/3193)
vim.api.nvim_set_hl(0, 'FloatBorder', {bg='#3B4252', fg='#5E81AC'})
vim.api.nvim_set_hl(0, 'NormalFloat', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeNormal', {bg='#3B4252'})
vim.api.nvim_set_hl(0, 'TelescopeBorder', {bg='#3B4252'})

-- Autohide nameless buffers
vim.api.nvim_create_autocmd({ 'BufEnter' }, {
  pattern = '{}',
  callback = function(args)
    if vim.api.nvim_buf_get_name(args.buf) == '' then
      vim.cmd('set bufhidden=delete')
    end
  end,
})

-- Hide number on TermOpen
vim.api.nvim_create_autocmd({ 'TermOpen' }, {
  callback = function(args)
    vim.cmd('setlocal nonu nornu')
  end
})
