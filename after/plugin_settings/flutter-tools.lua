require("flutter-tools").setup {
  lsp = {
    settings = {
      lineLength = 120,
      showTodos = true,
      completeFunctionCalls = true,
      analysisExcludedFolders = {"/Users/basharharfoush/work/tools/flutter"},
      renameFilesWithClasses = "prompt", -- "always"
      enableSnippets = true,
      updateImportsOnRename = true, -- Whether to update imports and other directives when files are renamed. Required for `FlutterRename` command.
    }
  }
}
