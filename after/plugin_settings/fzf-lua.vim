if !exists('g:loaded_fzf_lua')
  finish
endif

finish


nnoremap <leader>la <cmd>lua require('fzf-lua').lsp_code_actions()<CR>
nnoremap <leader>lr <cmd>lua require('fzf-lua').lsp_references()<CR>
nnoremap <leader>ld <cmd>lua require('fzf-lua').lsp_declarations()<CR>
nnoremap <leader>ls <cmd>lua require('fzf-lua').lsp_document_symbols()<CR>
nnoremap <leader>lS <cmd>lua require('fzf-lua').lsp_live_workspace_symbols()<CR>
nnoremap <leader>lw <cmd>lua require('fzf-lua').lsp_workspace_symbols()<CR>
nnoremap <leader>lf <cmd>lua require('fzf-lua').lsp_finder()<CR>
nnoremap <leader>li <cmd>lua require('fzf-lua').lsp_incoming_calls()<CR>
nnoremap <leader>lg <cmd>lua require('fzf-lua').grep_project()<CR>

nnoremap <leader>zb <cmd>lua require('fzf-lua').buffers()<CR>
nnoremap <leader>zl <cmd>lua require('fzf-lua').lines()<CR>
nnoremap <leader>zB <cmd>lua require('fzf-lua').git_branches()<CR>
nnoremap <leader>zt <cmd>lua require('fzf-lua').treesitter()<CR>
nnoremap <leader>zh <cmd>lua require('fzf-lua').command_history()<CR>

nnoremap <leader>gb <cmd>lua require('fzf-lua').git_bcommits()<CR>

":lua require'fzf-lua'.fzf_exec("ls", { winopts = { height=0.33, width=0.66 } })

nnoremap <leader>zd
      \ <cmd>lua require('fzf-lua')
      \.files({ raw_cmd = 'fd -H --glob -t d -d 4 ".git" ~/work \| xargs dirname' })<CR>

