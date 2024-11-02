require("lualine").setup({
  extensions = { "fugitive" },
  sections = {
    lualine_c = {
      {
        "filename",
        path = 1, -- 0: Just the filename
      }
    },
  },
  inactive_sections = {
    lualine_b = { "branch", "diff", "diagnostics" },
    lualine_c = {
      {
        "filename",
        path = 1,
      }
    },
    lualine_x = { "location" },
    lualine_y = { "b:fugitive_branch" },
  },
  options = {
    theme = "gruvbox",
    icons_enabled = true,
  },
})
