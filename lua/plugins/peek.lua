local M = { 'toppair/peek.nvim' }

M.ft = { 'markdown' }

M.build = "deno task --quiet build:fast"

M.config = function(_, opts)
  require("peek").setup({ app = "browser" })
  vim.api.nvim_create_user_command("Peek", require("peek").open, {})
  vim.api.nvim_create_user_command("PeekClose", require("peek").close, {})
end

return M
