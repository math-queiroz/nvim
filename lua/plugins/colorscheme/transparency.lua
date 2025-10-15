local M = {} 

M.apply = function()
  vim.api.nvim_set_hl(0, "StatusLine", { bg = "none" })
  vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })

  vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { bg = "none" })
  vim.api.nvim_set_hl(0, "NvimTreeNormal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NvimTreeNormalNC", { bg = "none" })
end

return M
