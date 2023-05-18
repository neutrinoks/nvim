-- NEOVIM CONFIGURATION

-- Notes ----------------------------------------------------------------------

-- Note: vim.cmd('set bla') == opt.bla = 

-- for longer embedded vim-code:
-- vim.cmd [[
--      vim code goes here
-- ]]

-- inoremap: maps the key in insert mode / i in vim.keymap.set()
-- nnoremap: maps the key in normal mode / i in vim.keymap.set()
-- vnoremap: maps the key in visual mode / i in vim.keymap.set()
-- <C> : represents Control key
-- <A> : Alt key
-- <ESC> : Escape key

-- Now we do start and define some shortcuts:
local opt = vim.opt
local g = vim.g
local keymap = vim.keymap

g.mapleader = ' '


-- Plugin-Manager / Plugins ---------------------------------------------------

local Plug = vim.fn['plug#']

vim.call('plug#begin') -- call plug#begin()

    -- Main Plugins -------------------------------------------------
    Plug('tpope/vim-fugitive') -- Some git-plugin for Airline...
    Plug('nvim-lualine/lualine.nvim') -- LuaLine
    Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- Tree-sitter
    Plug('nvim-tree/nvim-tree.lua') -- NVim-Tree, file browser
    Plug('nvim-tree/nvim-web-devicons') -- optional, for file icons
    Plug('marko-cerovac/material.nvim') -- Colorscheme material
    Plug('lukas-reineke/indent-blankline.nvim') -- Indent Blankline
    Plug('tpope/vim-commentary') -- Commentary (comment & uncomment code)
    -- TODO: Check Plug('numToStr/Comment')
    Plug('nvim-lua/plenary.nvim') -- Needed by Telescope
    Plug('nvim-telescope/telescope.nvim', {['branch'] = '0.1.x'}) -- Telescope
    Plug('neovim/nvim-lspconfig') -- LPSConfig
    Plug('hrsh7th/nvim-cmp') -- Nvim CMP (Completion with LspConfig
    -- TODO: Also check out the following
    -- Plug('windwp/nvim-autopairs') -- Autopairs ?!
    -- Plug('mg979/vim-visual-multi') -- Multiple cursors, must see!
    -- Plug('ryanoasis/vim-devicons') -- VimDevIcons (beautiful icons)
    -- Plug('tpope/vim-surround') -- Surround (parentheses, brackets, quotes, XML tags)
    -- Plug('mhinz/vim-startify')
    -- Plug 'ryanoasis/vim-devicons'
    -- Plug 'honza/vim-snippets'
    -- Plug 'preservim/tagbar' -- Tagbar for code navigation
    -- Plug 'terryma/vim-multiple-cursors' -- CTRL + N for multiple cursors

    -- Additional Plugins to extend nvim-cmp ------------------------
    -- Plug('neovim/nvim-lspconfig')
    Plug('hrsh7th/cmp-nvim-lsp')
    Plug('hrsh7th/cmp-buffer')
    Plug('hrsh7th/cmp-path')
    Plug('hrsh7th/cmp-cmdline')

    -- For vsnip users.
    -- Plug 'hrsh7th/cmp-vsnip'
    -- Plug 'hrsh7th/vim-vsnip'

    -- For luasnip users.
    Plug('L3MON4D3/LuaSnip', {['tag'] = 'v1.2.1', ['do'] = 'make install_jsregexp'})
    Plug('saadparwaiz1/cmp_luasnip')
    -- TODO: Check friendly-snippet
    -- Plug("rafamadriz/friendly-snippets")

    -- For ultisnips users.
    -- Plug 'SirVer/ultisnips'
    -- Plug 'quangnguyen30192/cmp-nvim-ultisnips'

    -- For snippy users.
    -- Plug 'dcampos/nvim-snippy'
    -- Plug 'dcampos/cmp-snippy'
    
vim.call('plug#end') -- call plug#end()


-- General Editor Settings ----------------------------------------------------

opt.encoding = 'UTF-8'
opt.guifont = "Hack Nerd Font" -- , "H12" 
opt.number = true
opt.relativenumber = true
opt.autoindent = true
opt.tabstop = 4
opt.smarttab = true
opt.softtabstop = 4
opt.hlsearch = true
opt.mouse = a
opt.expandtab = true
opt.scrolloff = 10
opt.colorcolumn = "100"
opt.showmatch = true
opt.cursorline = false
opt.showmode = false
-- opt.laststatus = 3
opt.incsearch = true


-- Additional Configuration Scripts in './Lua' --------------------------------

require('cfg_nvimtree')
require('cfg_treesitter')
require('cfg_colorscheme')
require('cfg_blankline')
-- require('cfg_airline')
-- require('cfg_telescope')
require('cfg_lspconfig')
require('cfg_cmp')
require('cfg_lualine')


-- Key Remappings -------------------------------------------------------------

-- Open Ex via '<space> c v'
keymap.set({'n','i','v'}, '<leader>cv', 'Ex')

-- exit insert mode, return to normal mode, by jj
vim.keymap.set('i', 'jj', '<ESC>')

-- vim.keymap.set('n', '<C-Left>', vim.cmd.tabprevious)
-- vim.keymap.set('n', '<C-Right>', vim.cmd.tabnext)
--nnoremap <C-Right> :tabnext<CR>
--nnoremap <C-Left> :tabprevious<CR>


