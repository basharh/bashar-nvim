"function! OpenTestFile()
  "echoerr "OpenTestFile not defined for filetype!"
"endfunction

"nnoremap <C-t> :call OpenTestFile()<CR>

function OpenDartTestFile()
  let path = expand('%:p')

  if ( path =~ '_test.dart' )
    let path = substitute(path, 'test', 'lib', "")
    let path = substitute(path, '_test.dart', '.dart', "")
    execute "edit " . path

    return
  endif


  let path = substitute(path, 'lib', 'test', "")
  let path = substitute(path, '/\(.*\)\.dart', '/\1_test.dart', "")
  execute "edit " . path
endfunction
