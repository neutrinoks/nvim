-- NVIM CONFIGURATION

-- Plugin-Manager / Plugins ---------------------------------------------------

local Plug = vim.fn['plug#']
vim.call('plug#begin') -- call plug#begin()

    -- more to be added here
    Plug('vim-airline/vim-airline') -- Airline (bottom info bar)
    Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- Tree-sitter
    Plug('nvim-tree/nvim-tree.lua') -- NVim-Tree, file browser
    Plug('nvim-tree/nvim-web-devicons') -- optional, for file icons
    Plug('marko-cerovac/material.nvim') -- Colorscheme material
    Plug('lukas-reineke/indent-blankline.nvim') -- Indent Blankline
    -- Plug 'mg979/vim-visual-multi' -- Multiple cursors, must see!
    -- Plug('neoclide/coc.nvim') -- Conquer of Completion (code completion)
    -- Plug('https://github.com/ryanoasis/vim-devicons') -- VimDevIcons (beautiful icons)
    -- Plug('https://github.com/tpope/vim-surround') -- Surround (parentheses, brackets, quotes, XML tags)
    -- Plug('https://github.com/tpope/vim-commentary') -- Commentary (comment & uncomment code)
    -- Plug('preservim/nerdcommenter')
    -- Plug('mhinz/vim-startify')
    -- Plug 'dracula/vim'
    -- Plug 'ryanoasis/vim-devicons'
    -- Plug 'SirVer/ultisnips'
    -- Plug 'honza/vim-snippets'
    -- Plug 'https://github.com/preservim/tagbar' -- Tagbar for code navigation
    -- Plug 'https://github.com/terryma/vim-multiple-cursors' -- CTRL + N for multiple cursors
    
vim.call('plug#end') -- call plug#end()

vim.cmd('set encoding=UTF-8')
vim.opt.guifont = { "Hack Nerd Font", "h12" }


-- Additional Configuration Scripts in './Lua' --------------------------------

require('nvim_tree')
require('treesitter')
require('colorscheme')
require('general')
require('blankline')
-- require('airline')

-- for longer embedded vim-code:
-- vim.cmd [[
--      vim code goes here
-- ]]
