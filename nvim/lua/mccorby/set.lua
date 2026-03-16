vim.o.termguicolors = true

vim.o.number = true
vim.o.relativenumber = true

vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.o.scrolloff = 8
vim.o.signcolumn = 'yes'

vim.o.mouse = 'a'
vim.o.clipboard = 'unnamedplus'
vim.o.wrap = false
vim.o.breakindent = true
vim.o.smartindent = true

-- Save undo, no swap
vim.o.undofile = true
vim.o.swapfile = false
vim.o.backup = false

-- Off search highlight
vim.o.hlsearch = false
vim.o.incsearch = true

-- Search case insensitive
vim.o.ignorecase = true
vim.o.smartcase = true

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

-- Set completeopt to have a better completion experience
vim.o.completeopt = 'menuone,noselect'

vim.g.mapleader = ' '
