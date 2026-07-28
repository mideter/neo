vim.lsp.config("*", {
  capabilities = require("blink.cmp").get_lsp_capabilities(),
})

vim.lsp.enable({ "clangd", "lua_ls", "kotlin_lsp" })

vim.diagnostic.config({ virtual_text = true })
