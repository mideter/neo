vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("config")
require("plugins")
require("keymap")
require("lsp")

vim.cmd('syntax on')
