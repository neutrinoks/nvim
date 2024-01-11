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

-- g.mapleader = ' '


-- Plugin-Manager / Plugins ---------------------------------------------------

local Plug = vim.fn['plug#']

vim.call('plug#begin')
        -- Main Plugins -------------------------------------------------
        Plug('nvim-tree/nvim-tree.lua') -- NVim-Tree, file browser
        Plug('nvim-tree/nvim-web-devicons') -- optional, for file icons
        Plug('nvim-lualine/lualine.nvim') -- LuaLine
        Plug('nvim-telescope/telescope.nvim', {['branch'] = '0.1.x'}) -- Telescope
        Plug('nvim-lua/plenary.nvim') -- Needed by Telescope
        Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- Tree-sitter
        Plug('lukas-reineke/indent-blankline.nvim') -- Indent Blankline
        Plug('romgrk/barbar.nvim') -- Tabline, alternative tbc: akinsho/bufferline
        -- Nvim-Cmp
        Plug('hrsh7th/nvim-cmp') -- Nvim CMP (Completion with LspConfig
        Plug('neovim/nvim-lspconfig') -- LPSConfig
        Plug('hrsh7th/cmp-nvim-lsp')
        Plug('hrsh7th/cmp-buffer')
        Plug('hrsh7th/cmp-path')
        Plug('hrsh7th/cmp-cmdline')
        -- Nvim-Cmp: For luasnip users.
        Plug('L3MON4D3/LuaSnip', {['tag'] = 'v1.2.1', ['do'] = 'make install_jsregexp'})
        Plug('saadparwaiz1/cmp_luasnip')
        -- TODO: Check friendly-snippet
        -- Plug("rafamadriz/friendly-snippets")

        -- Experimental Plugins /  To be checked ...
        Plug('marko-cerovac/material.nvim') -- Colorscheme material
        Plug('tpope/vim-commentary') -- Commentary (comment & uncomment code)
        Plug('akinsho/git-conflict.nvim') -- Git-conflict visualization
        -- TODO: Check Plug('numToStr/Comment')
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
vim.call('plug#end') -- call plug#end()


-- General Editor Settings ----------------------------------------------------

opt.encoding = 'UTF-8'
opt.guifont = "Cousine Nerd Font"
opt.number = true
opt.relativenumber = true
opt.autoindent = true
opt.tabstop = 4
-- opt.softtabstop = 4
opt.shiftwidth = 4
opt.smarttab = true
opt.hlsearch = true
opt.mouse = a
opt.expandtab = true
opt.scrolloff = 10
opt.colorcolumn = "101"
opt.showmatch = true
opt.cursorline = false
opt.showmode = false
opt.incsearch = true
opt.laststatus = 3


-- Additional Configuration Scripts in './Lua' --------------------------------

require('cfg_nvimtree')
require('cfg_treesitter')
require('cfg_colorscheme')
require('cfg_blankline')
require('cfg_lspconfig')
require('cfg_cmp')
require('cfg_lualine')
require('cfg_gitconflict')
require('cfg_barbar')


-- Key Remappings -------------------------------------------------------------

local opts = { noremap = true, silent = true }

-- Exit insert mode, return to normal mode, by jj
keymap.set('i', 'jj', '<ESC>', opts)
-- Save file by: Ctrl-s
keymap.set({'n','i'}, '<C-s>', vim.cmd.w, opts)
-- Pseudo-quit, aka close by: Alt-q
keymap.set('n', '<A-q>', vim.cmd.q, opts)
-- Setup bright daylight or darg night colorscheme
keymap.set('n', '<C-A-n>', '<Cmd>NeuNight<CR>', opts)
keymap.set('n', '<C-A-b>', '<Cmd>NeuDay<CR>', opts)

-- NvimTree Keymapping
keymap.set('n', '<C-n>', vim.cmd.NvimTreeToggle, opts)
keymap.set('n', '<C-m>', vim.cmd.NvimTreeFocus, opts)

-- Telescope relevant configuration
local builtin = require('telescope.builtin')
keymap.set('n', '<A-f>', builtin.find_files, opts)
keymap.set('n', '<A-g>', builtin.live_grep, opts)
-- vim.keymap.set('n', '<leader>ft', builtin.git_files, {})
-- vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
-- vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- LspConfig Keymapping
-- See `:help vim.diagnostic.*` for documentation on any of the below functions
keymap.set('n', '<space>e', vim.diagnostic.open_float, opts)
keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)
keymap.set('n', ']d', vim.diagnostic.goto_next, opts)
keymap.set('n', '<space>q', vim.diagnostic.setloclist, opts)

-- NvimCmp keymappingin
-- -> in cfg_cmp.lua

-- Barbar Keymapping
keymap.set({'n','i'}, '<A-,>', '<Cmd>BufferPrevious<CR>', opts)
keymap.set({'n','i'}, '<A-.>', '<Cmd>BufferNext<CR>', opts)
keymap.set('n', '<C-w>', '<Cmd>BufferClose<CR>', opts)

