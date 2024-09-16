if !exists('g:loaded_fzf_vim')
 finish
endif

let $FZF_DEFAULT_COMMAND = 'rg --files'
"let $FZF_DEFAULT_COMMAND = 'fd --type f'
let $BAT_THEME='Sublime Snazzy'
let $FZF_DEFAULT_OPTS='--exact'

command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number -- '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

command! -bang -bar -nargs=? -complete=dir Cd
  \ call fzf#run(fzf#wrap(
  \ {'source': 'fd -H --glob -t d -d 4 ".git" '
  \ . ( empty("<args>") ? ( <bang>0 ? "~" : "." ) : "<args>" )
  \ . ' | xargs dirname',
  \ 'sink': 'e'}))

nnoremap <leader>zd :Cd ~/work<cr>
nnoremap <leader>zb :Buffers<CR>
