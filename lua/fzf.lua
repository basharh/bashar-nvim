local M = {}

-- show all files changed in a branch, preview file diff, Gedit on select
function M.fzf_list_branch_files(branch)
  require "fzf-lua".files({
    --cmd = "git ls-tree -r --name-only " .. branch,
    cmd = "git diff --name-only origin/develop...HEAD",
    prompt = branch .. "> ",
    actions = {
      ["default"] = false,
      ["ctrl-s"] = false,
      ["ctrl-v"] = function(selected, o)
        local file = require "fzf-lua".path.entry_to_file(selected[1], o)
        local cmd = string.format("Gvsplit %s:%s", branch, file.path)
        vim.cmd(cmd)
      end,
    },
    previewer = false,

    preview =
        require "fzf-lua".shell.raw_preview_action_cmd(function(items)
          local file = require "fzf-lua".path.entry_to_file(items[1])
          return {
            cmd  = string.format("git diff %s HEAD -- %s | delta", branch, file.path),
            wrap = "wrap",
          }
        end)
  })
end

-- show all branches for current repo, preview diff, checkout on select
function M.fzf_list_current_repo_branches()
  --fzf_opts   = { ["--no-multi"] = true },
  --_multiline = false,
  require("fzf-lua").fzf_exec("git branch --all --color", {
      prompt     = "Branches> ",
      preview    = "git diff {1} | delta",
      fzf_opts   = { ["--no-multi"] = true },
      _multiline = false,
    })
end


-- show all commits that changed the current file
function M.fzf_list_file_commits()
end

-- show all "git" directories under ~/work
function M.fzf_list_work_directories()
  require "fzf-lua".files({
    cmd = 'fd -H --glob -t d -d 4 ".git" ~/work | xargs dirname',
  })
end


return M;
