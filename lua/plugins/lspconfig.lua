local M = { 'neovim/nvim-lspconfig' }

M.lazy = false

M.dependencies = {
  { "ms-jpq/coq_nvim", branch = "coq" },
  { "ms-jpq/coq.artifacts", branch = "artifacts" },
  { 'ms-jpq/coq.thirdparty', branch = "3p" }
}

M.init = function()
  vim.g.coq_settings = {}
end

M.config = function()

end

return M
