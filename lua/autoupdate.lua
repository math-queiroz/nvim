local config_path = vim.fn.stdpath("config")

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    vim.loop.spawn("git", {
      args = {"-C", config_path, "pull", "--rebase", "--autostash"},
      stdio = {nil, nil, nil},
    }, function(code)
      if code == 0 then
        -- Check if anything changed
        vim.loop.spawn("git", {
          args = {"-C", config_path, "rev-list", "--count", "HEAD@{upstream}..HEAD"},
        }, function(_, revcount)
          vim.schedule(function()
            if revcount ~= 0 then
              vim.notify("Config updated, restarting...", vim.log.levels.INFO)
              vim.cmd("silent! wa")
              vim.cmd("qa!")
              vim.loop.spawn("nvim", { args = { vim.fn.getcwd() } })
            else
              vim.notify("Config already up to date", vim.log.levels.INFO)
            end
          end)
        end)
      else
        vim.schedule(function()
          vim.notify("Git pull failed", vim.log.levels.ERROR)
        end)
      end
    end)
  end,
})
