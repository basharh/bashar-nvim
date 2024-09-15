if !exists('g:loaded_rg')
  finish
endif

let g:rg_derive_root = 1
let g:rg_root_types = ['.git', 'pubspec.yaml', 'package.json', 'tsconfig.json' ]

"nnoremap <leader>g :set operatorfunc=<SID>GrepOperator<cr>g@
"vnoremap <leader>g :<c-u>call <SID>GrepOperator(visualmode())<cr>

nnoremap <M-g> :silent execute 'Rg ' . expand('<cword>')<cr>

" TODO: fix this so it's not overwriting the copy register. use the example of
" other functions in my plugins that do this in a function
vnoremap <M-g> y :execute 'Rg ' . escape(@", ' \\/')<cr>
