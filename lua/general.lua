-- General Editor Settings ----------------------------------------------------

-- vim.cmd('syntax on')
vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set autoindent')
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set smarttab')
vim.cmd('set softtabstop=4')
vim.cmd('set mouse=a')
vim.cmd('set hlsearch')
vim.cmd('set expandtab')
vim.cmd('set scrolloff=5')
vim.cmd('set cc=100')
-- check out: incsearch, mouse=v, showmatch, nocompatible, autoindent


-- Key Remappings -------------------------------------------------------------

-- inoremap: maps the key in insert mode / i in vim.keymap.set()
-- nnoremap: maps the key in normal mode / i in vim.keymap.set()
-- vnoremap: maps the key in visual mode / i in vim.keymap.set()
-- <C> : represents Control key
-- <A> : Alt key
-- <ESC> : Escape key
-- vim.keymap.set('n', '<leader>pv', vim.cmd.Ex)

vim.g.mapleader = ' '

vim.keymap.set('i', '<C-m>', '<ESC>')
vim.keymap.set('v', '<C-m>', '<ESC>')

vim.keymap.set('i', '<C-s>', vim.cmd.w)
vim.keymap.set('n', '<C-n>', vim.cmd.NvimTreeToggle)


