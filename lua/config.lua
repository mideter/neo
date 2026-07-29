-- .config/nvim/lua/config.lua

vim.opt.number = true -- line numbers
vim.opt.relativenumber = true -- show relative line numbers
vim.opt.cursorline = true -- highlight current line
vim.opt.wrap = false -- do not wrap lines by default
vim.opt.scrolloff = 10 -- keep 10 lines above/below cursor
vim.opt.sidescrolloff = 10 -- keep 10 lines to left/right of cursor

vim.opt.tabstop = 4 -- use 4 spaces for tabs
vim.opt.shiftwidth = 4 -- indent width
vim.opt.softtabstop = 4 -- backspace deletes 4 spaces at a time
vim.opt.expandtab = true -- use spaces instead of tabs

vim.opt.hlsearch = true -- highlight search matches
vim.opt.incsearch = true -- show matches as you type

vim.opt.listchars = { tab = '▸ ', trail = '·', eol = '↴' } -- show invisible characters: tabs as '▸ ', trailing spaces as '·', end of line as '↴'
vim.opt.list = true

vim.opt.clipboard = "unnamedplus" -- use system clipboard for all yank/paste/delete operations

vim.g.mapleader = " " -- set space as leader key (prefix for custom mapplings)


vim.opt.swapfile = false


vim.opt.showmatch = false
