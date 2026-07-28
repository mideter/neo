vim.pack.add({
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/ibhagwan/fzf-lua" },
    {
        src = "https://github.com/saghen/blink.cmp",
        version = "v1",
    },
})

require("mason").setup({})

local actions = require('fzf-lua.actions')
require('fzf-lua').setup({
    winopts = { backdrop = 85 },
    keymap = {
        builtin = {
            ["<C-f>"] = "preview-page-down",
            ["<C-b>"] = "preview-page-up",
            ["<C-p>"] = "toggle-preview",
        },
        fzf = {
            ["ctrl-a"] = "toggle-all",
            ["ctrl-t"] = "first",
            ["ctrl-g"] = "last",
            ["ctrl-d"] = "half-page-down",
            ["ctrl-u"] = "half-page-up",
        }
    },
    actions = {
        files = {
            ["ctrl-q"] = actions.file_set_to_qf,
            ["ctrl-n"] = actions.toggle_ignore,
            ["ctrl-h"] = actions.toggle_hidden,
            ["enter"] = actions.file_edit_or_qf,
        }
    }
})


require("blink.cmp").setup({
  keymap = { preset = "default" },
  sources = {
    default = { "lsp", "path", "buffer" }, -- snippets можно не трогать
  },
  completion = {
    documentation = { auto_show = true },
  },
})
