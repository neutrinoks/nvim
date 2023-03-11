-- General editor settings ----------------------------------------------------
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

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Plugin-Manager / Plugins ---------------------------------------------------

local Plug = vim.fn['plug#']
vim.call('plug#begin') -- call plug#begin()

    -- more to be added here
    Plug('https://github.com/vim-airline/vim-airline') -- Airline (bottom info bar)
    Plug('https://github.com/preservim/nerdtree') -- NerdTree (file tree browser)
    Plug('https://github.com/ryanoasis/vim-devicons') -- VimDevIcons (beautiful icons)
    -- Plug('vwxyutarooo/nerdtree-devicons-syntax')
    Plug('https://github.com/nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- Tree-sitter
    -- Plug('https://github.com/tpope/vim-surround') -- Surround (parentheses, brackets, quotes, XML tags)
    -- Plug('https://github.com/tpope/vim-commentary') -- Commentary (comment & uncomment code)
    -- Plug('https://github.com/neoclide/coc.nvim') -- Conquer of Completion (code completion)
    -- Plug('preservim/nerdcommenter')
    -- Plug('mhinz/vim-startify')
    -- Plug 'dracula/vim'
    -- Plug 'ryanoasis/vim-devicons'
    -- Plug 'SirVer/ultisnips'
    -- Plug 'honza/vim-snippets'
    -- Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
    -- Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
    
vim.call('plug#end') -- call plug#end()

vim.cmd('set encoding=UTF-8')
vim.opt.guifont = { "Hack Nerd Font", "h12" }

-- NerdTree Configuration -----------------------------------------------------

vim.cmd('let g:airline_powerline_fonts = 1')

vim.cmd('nnoremap <C-n> :NERDTree<CR>')
vim.cmd('nnoremap <C-t> :NERDTreeToggle<CR>')
-- inoremap: maps the key in insert mode
-- nnoremap: maps the key in normal mode
-- vnoremap: maps the key in visual mode
-- <C> : represents Control key
-- <A> : Alt key


-- Additional Configuration Scripts in './Lua' --------------------------------

require('treesitter')

