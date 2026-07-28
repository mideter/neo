return {
  cmd = { vim.fn.exepath("intellij-server"), "--stdio" },
  -- или просто { "intellij-server", "--stdio" }, если Mason bin в PATH
  filetypes = { "kotlin" },
  root_markers = { "settings.gradle.kts", "build.gradle.kts" },
  single_file_support = false,
}

