vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.opt.backspace = '2'
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

-- Use spaces for tabs
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.shiftround = true
vim.opt.expandtab = true

-- Use relative line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Use the clipboard
vim.opt.clipboard = 'unnamedplus'

-- Line column 
vim.opt.colorcolumn = '80'

vim.opt.scrolloff = 8 
vim.opt.wrap = false
vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.keymap.set('n', '<leader>h', ':nohlsearch<CR>')
