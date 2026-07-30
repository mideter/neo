vim.pack.add({
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
    { src = "https://github.com/mason-org/mason.nvim" },
    { src = "https://github.com/ibhagwan/fzf-lua" },

    { src = "https://github.com/hrsh7th/nvim-cmp" },
    { src = "https://github.com/hrsh7th/cmp-nvim-lsp" },
    { src = "https://github.com/hrsh7th/cmp-buffer" },
    { src = "https://github.com/hrsh7th/cmp-path" },

    { src = "https://github.com/nvim-lua/plenary.nvim" },
    { src = "https://github.com/NeogitOrg/neogit" },

    { src = "https://github.com/folke/tokyonight.nvim" },
})

require("tokyonight").setup({
  style = "moon",
  transparent = true,
  styles = {
    sidebars = "transparent",
    floats = "transparent",
  },
  --on_highlights = function(hl, c)
    -- softer current line number (default is bold + bright)
--    hl.CursorLineNr = { fg = c.fg_dark, bold = false }
  --end,
})
vim.cmd.colorscheme("tokyonight")

require("nvim-treesitter").setup({
    ensure_install = { "markdown", "markdown_inline" },
    latex = { enabled = false }, -- или auto_install = true
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

local cmp = require("cmp")
cmp.setup({
  snippet = {
    expand = function(args)
      vim.snippet.expand(args.body) -- Neovim 0.10+
    end,
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-Space>"] = cmp.mapping.complete(),
    ["<CR>"] = cmp.mapping.confirm({ select = true }),
    ["<C-e>"] = cmp.mapping.abort(),
  }),
  sources = {
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "buffer" },
  },
  window = {
    documentation = cmp.config.window.bordered(),
  },
})


require("neogit").setup({})
