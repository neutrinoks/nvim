-- NVIM CONFIGURATION

-- Plugin-Manager / Plugins ---------------------------------------------------

local Plug = vim.fn['plug#']

vim.call('plug#begin') -- call plug#begin()

    -- more to be added here
    Plug('tpope/vim-fugitive') -- Some git-plugin for Airline...
    Plug('vim-airline/vim-airline') -- Airline (bottom info bar)
    Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- Tree-sitter
    Plug('nvim-tree/nvim-tree.lua') -- NVim-Tree, file browser
    Plug('nvim-tree/nvim-web-devicons') -- optional, for file icons
    Plug('marko-cerovac/material.nvim') -- Colorscheme material
    Plug('lukas-reineke/indent-blankline.nvim') -- Indent Blankline
    Plug('tpope/vim-commentary') -- Commentary (comment & uncomment code)
    Plug('nvim-lua/plenary.nvim') -- Needed by Telescope
    Plug('nvim-telescope/telescope.nvim', {['branch'] = '0.1.x'}) -- Telescope
    Plug('neovim/nvim-lspconfig') -- LPSConfig
    -- Plug('neoclide/coc.nvim', {['branch'] = 'release'}) -- Conquer of Completion
    -- Plug('mg979/vim-visual-multi') -- Multiple cursors, must see!
    -- Plug('ryanoasis/vim-devicons') -- VimDevIcons (beautiful icons)
    -- Plug('tpope/vim-surround') -- Surround (parentheses, brackets, quotes, XML tags)
    -- Plug('mhinz/vim-startify')
    -- Plug 'ryanoasis/vim-devicons'
    -- Plug 'SirVer/ultisnips'
    -- Plug 'honza/vim-snippets'
    -- Plug 'preservim/tagbar' -- Tagbar for code navigation
    -- Plug 'terryma/vim-multiple-cursors' -- CTRL + N for multiple cursors
    -- YouCompleteMe
    
vim.call('plug#end') -- call plug#end()

vim.cmd('set encoding=UTF-8')
vim.opt.guifont = { "Hack Nerd Font", "h13" }


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
vim.cmd('set scrolloff=10')
-- vim.cmd('set cc=100')
vim.cmd('set showmatch')
-- check out: incsearch, mouse=v, nocompatible 


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

-- vim.keymap.set('n', '<C-Left>', vim.cmd.tabprevious)
-- vim.keymap.set('n', '<C-Right>', vim.cmd.tabnext)
--nnoremap <C-Right> :tabnext<CR>
--nnoremap <C-Left> :tabprevious<CR>

-- Additional Configuration Scripts in './Lua' --------------------------------

require('nvimtree')
require('treesitter')
require('colorscheme')
require('blankline')
require('airline')
require('telescope')
require('mylspconfig')
-- require('coc')

-- for longer embedded vim-code:
-- vim.cmd [[
--      vim code goes here
-- ]]
