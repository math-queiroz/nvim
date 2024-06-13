local M = { 'akinsho/nvim-bufferline.lua' }

M.event = 'BufAdd'

M.opts = {
  options = {
    offsets = {
      {
        filetype = 'NvimTree',
        text = '',
        highlight = 'Directory',
        separator = true
      },
    },
    custom_filter = function(buf_number, buf_numbers)
      return vim.fn.bufname(buf_number):sub(1,5) ~= "term:"
    end
  }
}

M.config = function(_, opts)
  require('keybinds').register('bufferline')
  require('bufferline').setup(opts)
end

return M
