require("toggleterm").setup({
  open_mapping = [[<M-t>]],
  hide_numbers = true,
  shade_terminals = true,
  direction = 'horizontal',
  close_on_exit = true,
  size = 15,
  shading_factor = 40,
  autochdir = true,
})

vim.keymap.set('t', '<M-h>', [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set('t', '<M-j>', [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set('t', '<M-k>', [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set('t', '<M-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set('t', '<M-w>', [[<C-\><C-n><C-w>]], opts)

--vim.keymap.set('n', [[<M-y>]], () {
--require("toggleterm").toggle(
--});
--vim.keymap.set('t', [[<M-y>]], ":ToggleTerm<CR>")
