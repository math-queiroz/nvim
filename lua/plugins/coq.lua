local M = { 'ms-jpq/coq_nvim' }

M.dependencies = { 'ms-jpq/coq.artifacts' }

M.lazy = false

M.init = function(_, _opts)
  require('coq')
end

return M
