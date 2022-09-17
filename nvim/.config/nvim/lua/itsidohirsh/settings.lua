-- Leader Key
vim.g.mapleader = ' '

-- Reach colors
vim.opt.termguicolors = true

-- Block cursor in all modes
vim.opt.guicursor = ''

-- Line Numbers
vim.opt.number = true
vim.opt.numberwidth = 2
vim.opt.relativenumber = true

-- Always display sign column
vim.opt.signcolumn = 'yes'

-- Highlight cursor line
vim.opt.cursorline = true

-- Smart Indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.smartindent = true
vim.opt.expandtab = true

-- No wrap
vim.opt.wrap = false

-- Number of lines above & below cursor
vim.opt.scrolloff = 8

-- Show hidden chars
vim.opt.list = true
vim.opt.listchars = {
    tab = '→ ',
    lead = '·',
    trail = '·',
    extends = '▸',
    precedes = '◂',
    nbsp = '◇'
}

-- Case insensitive searching, unless \c or \C are present
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Buffer splitting
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Make neovim & host OS clipboard play nicely with each other
vim.opt.clipboard = 'unnamedplus'

-- Enable mouse for all modes
vim.opt.mouse = 'a'

-- Undo & Backup
vim.opt.writebackup = false
vim.opt.swapfile = false
vim.opt.undofile = true

-- Error bells
vim.opt.errorbells = false

-- NerdTree
vim.g.NERDTreeGitStatusWithFlags = 1
