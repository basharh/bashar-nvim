local actions = require "fzf-lua.actions"
local map = vim.keymap.set

require 'fzf-lua'.setup {
  fzf_opts = {
    ["--exact"] = true,
  },
  keymap = {
    fzf = {
      true,
      ["ctrl-u"] = "half-page-up",
      ["ctrl-d"] = "half-page-down",
      ["alt-u"]  = "preview-page-up",
      ["alt-d"]  = "preview-page-down"
    },
    treesitter = {
      true,
      ["ctrl-u"] = "half-page-up",
      ["ctrl-d"] = "half-page-down",
      ["alt-u"]  = "preview-page-up",
      ["alt-d"]  = "preview-page-down"
    }
  },
  buffers = {
    actions = {
      ["alt-x"] = { fn = actions.buf_del, reload = true },
      ["ctrl-x"] = false,
    },
  },
  git = {
    status = {
      actions = {
        -- false this should work but doesn't
        --["s"] = { fn = actions.git_stage, reload = true },
        --["u"] = { fn = actions.git_unstage, reload = true },
      },
    }
  }
}

-- <leader>l LSP, TODO: should maybe moved to LspAttach
map("n", "<leader>la", require('fzf-lua').lsp_code_actions, {})
map("n", "<leader>lr", require('fzf-lua').lsp_references, {})
map("n", "<leader>ld", require('fzf-lua').lsp_declarations, {})
map("n", "<leader>ls", require('fzf-lua').lsp_document_symbols, {})
map("n", "<leader>lS", require('fzf-lua').lsp_live_workspace_symbols, {})
map("n", "<leader>lw", require('fzf-lua').lsp_workspace_symbols, {})
map("n", "<leader>lf", require('fzf-lua').lsp_finder, {})
map("n", "<leader>li", require('fzf-lua').lsp_incoming_calls, {})
map("n", "<leader>lg", require('fzf-lua').grep_project, {})

-- <leader>z general fzf
map("n", "<leader>zb", require('fzf-lua').buffers, {})
map("n", "<leader>zl", require('fzf-lua').lines, {})
map("n", "<leader>zB", require('fzf-lua').git_branches, {})
map("n", "<leader>zt", require('fzf-lua').treesitter, {})
map("n", "<leader>zh", require('fzf-lua').command_history, {})
map("n", "<leader>zd", require('fzf').fzf_list_work_directories, {}) -- all repo branches

-- <leader>g git shortcuts
map("n", "<leader>gc", require('fzf-lua').git_bcommits, { desc = "show commits in current branch" })
map("n", "<leader>gC", require('fzf-lua').git_commits, { desc = "show commits for a single file" })
map("n", "<leader>gf", function() require('fzf').fzf_list_branch_files("HEAD") end, {}) -- all files changed in branch
map("n", "<leader>gF", require('fzf-lua').git_files, {})                                -- all files changed in branch
map("n", "<leader>gb", require('fzf').fzf_list_current_repo_branches, {})               -- all repo branches
map("n", "<leader>gs", require('fzf-lua').git_status, {})                               -- all repo branches
