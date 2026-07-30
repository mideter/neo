-- .config/nvim/lua/config.lua

vim.opt.showmatch = false
vim.opt.swapfile = false

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

vim.opt.listchars = { tab = '▸ ', trail = '·' } -- show invisible characters: tabs as '▸ ', trailing spaces as '·'
vim.opt.list = true

vim.opt.clipboard = "unnamedplus" -- use system clipboard for all yank/paste/delete operations
vim.opt.laststatus = 3 -- global statusline (one for all windows; needed by Avante sidebar)
vim.opt.termguicolors = true -- enable 24-bit RGB colors in the terminal

-- Avante sidebar slightly distinct from editor
vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" }) -- make floats (and Avante sidebar) match the editor
vim.api.nvim_set_hl(0, "AvanteSidebarWinSeparator", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "AvanteSidebarNormal", { link = "NormalFloat" })
vim.api.nvim_set_hl(0, "AvanteSidebarWinHorizontalSeparator", { link = "NormalFloat" })

vim.g.mapleader = " " -- set space as leader key (prefix for custom mapplings)
