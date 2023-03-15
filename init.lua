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
    -- Plug('mg979/vim-visual-multi') -- Multiple cursors, must see!
    -- Plug('neoclide/coc.nvim', {['branch'] = 'release'}) -- Conquer of Completion
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
vim.opt.guifont = { "Hack Nerd Font", "h12" }


-- Additional Configuration Scripts in './Lua' --------------------------------

require('nvimtree')
require('treesitter')
require('colorscheme')
require('general')
require('blankline')
require('airline')
require('telescope')

-- for longer embedded vim-code:
-- vim.cmd [[
--      vim code goes here
-- ]]
