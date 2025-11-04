local M = { 'nvim-lualine/lualine.nvim' }

M.dependencies = 'arkav/lualine-lsp-progress'

M.event = 'UIEnter'

M.init = function(_, opts)
  function darken(hex, f)
    f = f or 0.4
    local r = tonumber(hex:sub(2,3),16)*f
    local g = tonumber(hex:sub(4,5),16)*f
    local b = tonumber(hex:sub(6,7),16)*f
    return string.format("#%02x%02x%02x", r, g, b)
  end

  local colors = {
    white = '#eeeeee',
    darkgray = '#1C161d', gray    = '#727169', innerbg = 'NONE',
    outerbg  = 'NONE',    normal  = '#769FF0', insert  = '#D3869B',
    visual   = '#ffa066', replace = '#e46876', command = '#FE8019',
  }

  local theme = {
    inactive = {
      a = { fg = colors.gray, bg = colors.outerbg, gui = 'bold' },
      b = { fg = colors.gray, bg = colors.outerbg },
      c = { fg = colors.gray, bg = colors.innerbg },
    },
    visual = {
      a = { fg = colors.darkgray, bg = colors.visual, gui = 'bold' },
      b = { fg = colors.white, bg = darken(colors.visual) },
      c = { fg = colors.gray, bg = colors.innerbg },
    },
    replace = {
      a = { fg = colors.darkgray, bg = colors.replace, gui = 'bold' },
      b = { fg = colors.white, bg = darken(colors.replace) },
      c = { fg = colors.gray, bg = colors.innerbg },
    },
    normal = {
      a = { fg = colors.darkgray, bg = colors.normal, gui = 'bold' },
      b = { fg = colors.white, bg = darken(colors.normal) },
      c = { fg = colors.gray, bg = colors.innerbg },
    },
    insert = {
      a = { fg = colors.darkgray, bg = colors.insert, gui = 'bold' },
      b = { fg = colors.white, bg = darken(colors.insert) },
      c = { fg = colors.gray, bg = colors.innerbg },
    },
    command = {
      a = { fg = colors.darkgray, bg = colors.command, gui = 'bold' },
      b = { fg = colors.white, bg = darken(colors.command) },
      c = { fg = colors.gray, bg = colors.innerbg },
    },
  }

  local lualine = require('lualine')
  local lsp_progress = require('plugins.dependencies.lsp-progress').component

  lualine.setup( {
    options = {
      theme = theme,
      icons_enabled = true,
      -- component_separators = {},
      component_separators = { left = '', right = ''},
      -- component_separators = { left = '', right = ''},
      -- section_separators = {},
      -- section_separators = { left = ' ', right = ' '  },
      section_separators = { left = '', right = ''  },
      -- section_separators = {},
      disabled_filetypes = {
        statusline = {},
        winbar = {},
      },
      ignore_focus = {},
      always_divide_middle = true,
      globalstatus = true,
      refresh = {
        statusline = 1000,
        tabline = 1000,
        winbar = 1000,
      }
    },
    sections = {
      lualine_a = {'mode', 'branch'},
      lualine_b = {'diagnostics'},
      lualine_c = {'diff'},
      lualine_x = {lsp_progress},
      lualine_y = {'filename'},
      lualine_z = {'progress', 'location'},
    },
    inactive_sections = {
      lualine_a = {},
      lualine_b = {},
      lualine_c = {'filename'},
      lualine_x = {'location'},
      lualine_y = {},
      lualine_z = {}
    },
    tabline = {},
    winbar = {},
    inactive_winbar = {},
    extensions = {}
  })
end

return M
