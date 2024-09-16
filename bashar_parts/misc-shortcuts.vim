if exists("loaded_bashar_misc_shortcuts")
  finish
endif
let loaded_bashar_misc_shortcuts = 1

nnoremap <c-h> :set hls!<cr>
nnoremap <c-l> :set list!<cr>
nnoremap <leader>x :qa<cr>

"Go to top of visual selection
vnoremap gt <esc>`>:exec 'norm '.visualmode().'`<lt>'<cr>

"Go to end of visual selection
vnoremap gb <esc>`<lt>:exec 'norm '.visualmode().'`>'<cr>

" Navigation shortcuts
nnoremap <C-J> <C-E>
nnoremap <C-K> <C-Y>

nnoremap <C-e> :execute "e " . expand('%:h')<cr>

nnoremap <space> za

"Wrap word in quotes
nnoremap <leader>" ea"<esc>bi"<esc>el

nnoremap <leader>q :quit<cr>
nnoremap <leader>h :execute "help " . expand("<cword>")<cr>

"Wrap visual selection with quotes
vnoremap <leader>" <esc>`>a"<esc>`<lt>i"<esc>

nnoremap <M-x> :source %<cr>
