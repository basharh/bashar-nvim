local fzf = require('fzf');

vim.api.nvim_create_user_command(
  "ListFilesFromBranch",
  function(opts)
    fzf.fzf_list_branch_files(opts.args)
  end,
  {
    nargs = 1,
    force = true,
    complete = function()
      local branches = vim.fn.systemlist("git branch --all --sort=-committerdate")
      if vim.v.shell_error == 0 then
        return vim.tbl_map(function(x)
          return x:match("[^%s%*]+"):gsub("^remotes/", "")
        end, branches)
      end
    end,
  })
