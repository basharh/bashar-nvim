if !exists('g:loaded_fugitive')
  finish
endif

nnoremap <leader>gg :Git<CR>
nnoremap <leader>ga :Git add %<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gd :rightb Gvdiffsplit<CR>
nnoremap <leader>gs :Git status<CR>
nnoremap <leader>gp :Git push<CR>
nnoremap <leader>gD :rightb Gvdiffsplit origin/develop...HEAD<CR>
nnoremap <leader>gR :GRename
