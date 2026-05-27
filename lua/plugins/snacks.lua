local M = { 'folke/snacks.nvim' }

M.lazy = false

M.opts = {
  explorer = {},
  picker = {
    sources = {
      explorer = {
        replace_netrw = true,
        trash = true
      }
    }
  }
}

M.config = function(_, opts)
  require('keybinds').register('snacks')
end

return M
