vim.lsp.config("*", {
  capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

vim.lsp.enable({ "clangd", "lua_ls", "kotlin_lsp" })

vim.diagnostic.config({ virtual_text = true })
