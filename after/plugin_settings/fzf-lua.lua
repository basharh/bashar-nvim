require'fzf-lua'.setup {
  keymap = {
    fzf = {
      true,          -- do not inherit from defaults
      ["ctrl-u"]      = "half-page-up",
      ["ctrl-d"]      = "half-page-down",
    }
  }
}
