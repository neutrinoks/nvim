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

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Individual Methods for daily use -------------------------------------------

-- material scheme, variants:
-- darker, lighter, oceanic, palenight, deep ocean

function setcolorsnight()
    vim.g.material_style = 'deep ocean'
    vim.cmd('colorscheme material')
end


function setcolorsday()
    vim.g.material_style = 'lighter'
    vim.cmd('colorscheme material')
end

vim.cmd(':command! Daylight lua setcolorsday()')
vim.cmd(':command! Night lua setcolorsnight()')

