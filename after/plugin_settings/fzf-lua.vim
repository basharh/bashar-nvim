if !exists('g:loaded_fzf_lua')
  finish
endif

nnoremap <leader>la <cmd>lua require('fzf-lua').lsp_code_actions()<CR>
nnoremap <leader>lr <cmd>lua require('fzf-lua').lsp_references()<CR>
nnoremap <leader>ld <cmd>lua require('fzf-lua').lsp_declarations()<CR>
nnoremap <leader>ls <cmd>lua require('fzf-lua').lsp_document_symbols()<CR>
nnoremap <leader>lf <cmd>lua require('fzf-lua').lsp_finder()<CR>
nnoremap <leader>li <cmd>lua require('fzf-lua').lsp_incoming_calls()<CR>
nnoremap <leader>lg <cmd>lua require('fzf-lua').grep_project()<CR>

nnoremap <leader>zd <cmd>lua require('fzf-lua')
      \ .files({ raw_cmd = 'fd -H --glob -t d -d 4 ".git" ~/work \| xargs dirname' })<CR>

nnoremap <leader>zb <cmd>lua require('fzf-lua').buffers()<CR>
