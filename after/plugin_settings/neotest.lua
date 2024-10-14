require("neotest").setup({
  adapters = {
    require("neotest-dart")({
      use_lsp = true,
    }),
    --require("neotest-plenary"),
    --require("neotest-vim-test")({
      --ignore_file_types = { "python", "vim", "lua" },
    --}),
  },
  log_level = vim.log.levels.INFO,
})

vim.keymap.set("n", "<leader>tt", function() require("neotest").summary.toggle() end)
vim.keymap.set("n", "<leader>to", function() require("neotest").output.open({ enter = true }) end)
vim.keymap.set("n", "<leader>tp", function() require("neotest").output_panel.toggle() end)
vim.keymap.set("n", "<leader>tr", function() require("neotest").run.run(vim.fn.expand("%")) end)
vim.keymap.set("n", "<leader>ts", function() require("neotest").summary.toggle() end)
