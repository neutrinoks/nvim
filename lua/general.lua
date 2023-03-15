-- General Editor Settings ----------------------------------------------------

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
-- vim.cmd('set cc=100')
vim.cmd('set showmatch')
-- check out: incsearch, mouse=v, nocompatible, autoindent


-- Key Remappings -------------------------------------------------------------

-- inoremap: maps the key in insert mode / i in vim.keymap.set()
-- nnoremap: maps the key in normal mode / i in vim.keymap.set()
-- vnoremap: maps the key in visual mode / i in vim.keymap.set()
-- <C> : represents Control key
-- <A> : Alt key
-- <ESC> : Escape key

-- define a global mapleader: <spacebar>
vim.g.mapleader = ' '
-- exit insert mode, return to normal mode, by jj
vim.keymap.set('i', 'jj', '<ESC>')

