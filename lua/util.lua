local M = {}

M.hide_bg = function()
  vim.api.nvim_create_autocmd("Colorscheme", {
    callback = function ()
      local groups = {
        "Normal",
        "NormalNC",
        "NormalFloat",
        "Float",
        "FloatBorder",
        "SignColumn",
        "GitSignsAdd",
        "GitSignsChange",
        "GitSignsDelete",
        "Pmenu",
        "PmenuSel",
        "WinSeparator",
        "TelescopeNormal",
        "TelescopeBorder",
        "TelescopeSelection",
        "TelescopePreviewNormal",
        "WhichKeyFloat",
      }

      for _, group in ipairs(groups) do
        vim.cmd("hi " .. group .. " ctermbg=None guibg=NONE")
      end
      
      return true
    end,
    desc = "Transparent backgrounds",
  })
end

return M
