nnoremap <leader>gg :Git<CR>
nnoremap <leader>ga :Git add %<CR>
nnoremap <leader>gc :Git commit<CR>
nnoremap <leader>gd :rightb Gvdiffsplit<CR>
nnoremap <leader>gs :Git status<CR>
nnoremap <leader>gp :Git push<CR>

nnoremap <leader>gD :rightb Gvdiffsplit origin/develop...HEAD<CR>

"nnoremap <leader>gf
      "\ <cmd>lua require'fzf-lua'
      "\.fzf_exec("git diff --name-only origin/develop...HEAD",
      "\ { actions = require'fzf-lua'.defaults.actions.files, previewer = "builtin" })<CR>

nnoremap <leader>gR :GRename

