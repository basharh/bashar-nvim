if !exists('g:loaded_fzf_lua')
  finish
endif

if !exists('g:loaded_nerd_tree')
    finish
endif

" on nerdtree dir node: open FZF for directory
function! NERDTreeOpenFZF()
  let l:node = g:NERDTreeFileNode.GetSelected()

  if empty(l:node)
    return
  endif

  let l:path = l:node.path.str()

  if !isdirectory(l:path)
    let l:path = fnamemodify(l:path, ":h")
  endif

  execute "FzfLua files cwd=" . l:path
endfunction

" on nerdtree dir node: grep directory
function! NERDTreeOpenGrep()
  let l:node = g:NERDTreeFileNode.GetSelected()

  if empty(l:node)
    return
  endif


  execute "FzfLua live_grep_glob cwd=" . l:node.path.str()
endfunction

" inside buffer: open FZF for directory
function! BufferOpenFZF()
  let l:buffer_git_path = finddir('.git/..', expand('%:p:h').';')

  if empty(l:buffer_git_path)
      return
  endif

  execute "FzfLua files cwd=" . l:buffer_git_path
endfunction

" inside buffer: grep a git directory of the file
function! BufferOpenGrep(visual)
  "let l:buffer_git_path = fnamemodify(FugitiveGitDir(), ":h")
  let l:buffer_git_path = finddir('.git/..', expand('%:p:h').';')
  let l:search = ""

  if a:visual
    let temp = @@
    norm! gvy
    let l:search = @@
    let @@ = temp
  endif

  if empty(l:buffer_git_path)
      return
  endif

  echo "search for " . l:search

  execute "FzfLua live_grep_glob cwd=" . l:buffer_git_path . " search=" . l:search
endfunction

" nerdtree mappings are defined in the filetype plugins
nnoremap <leader>zf :call BufferOpenFZF()<cr>
nnoremap <leader>zg :call BufferOpenGrep(0)<cr>
vnoremap <leader>zg :call BufferOpenGrep(1)<cr>
