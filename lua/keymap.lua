vim.opt.langmap =
  "ёйцукенгшщзхъфывапролджэячсмитьбю;`qwertyuiop[]asdfghjkl;'zxcvbnm\\,." ..
  ",ËЙЦУКЕНГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;~QWERTYUIOP{}ASDFGHJKL:\"ZXCVBNM<>"
vim.opt.langremap = true

vim.keymap.set('n', '<leader>e', ':Explore<CR>')
vim.keymap.set('n', '<leader><CR>', ':nohlsearch<CR>')
vim.keymap.set('n', '<leader>o', ':update<CR> :source<CR>')
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>')

local fzf = require("fzf-lua")

vim.keymap.set('n', '<leader><leader>', fzf.files)
vim.keymap.set('n', '<leader>/', fzf.live_grep)

local opts = { noremap = true, silent = true }

vim.keymap.set('n', 'gd', ":lua vim.lsp.buf.definition()<CR>", opts)
vim.keymap.set('n', '<leader>fo', ":lua vim.lsp.buf.format()<CR>", opts)
vim.keymap.set('n', '<leader>gg', ':Neogit<CR>', opts)
vim.keymap.set('n', '<leader>aa', ':AvanteAsk<CR>', opts)
vim.keymap.set('v', '<leader>aa', ':AvanteAsk<CR>', opts)
vim.keymap.set('n', '<leader>at', ':AvanteToggle<CR>', opts)

