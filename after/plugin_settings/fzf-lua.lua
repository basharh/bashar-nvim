local actions = require "fzf-lua.actions"

require'fzf-lua'.setup {
  keymap = {
    fzf = {
      true,          -- do not inherit from defaults
      ["ctrl-u"]      = "half-page-up",
      ["ctrl-d"]      = "half-page-down",
    }
  },
  buffers = {
    actions = {
      ["alt-x"] = { fn = actions.buf_del, reload = true },
      ["ctrl-x"] = false,
    },
  }
}
