-- NEOVIM CONFIGURATION

-- Notes -----------------------------------------------------------------------

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
-- Current system time for choosing the brigt or dark color scheme
local time = tonumber(os.date("%H"))

g.mapleader = ' '

-- Plugin-Manager / Plugins ----------------------------------------------------
local Plug = vim.fn['plug#']

vim.call('plug#begin')
    -- Fuzzy Finding, File Search -----------------------------------
    Plug('nvim-lua/plenary.nvim') -- Needed by Telescope
    Plug('nvim-telescope/telescope.nvim', {['branch'] = '0.1.x'})

    -- File Browser -------------------------------------------------
    Plug('nvim-tree/nvim-tree.lua')

    -- Tabs & Top Line ----------------------------------------------
    Plug('romgrk/barbar.nvim')
    -- akinsho/bufferline

    -- Status Line --------------------------------------------------
    Plug('nvim-lualine/lualine.nvim')

    -- Tree-Sitter & Visualizations ---------------------------------
    -- Syntax Detection & Syntax Highlighting
    Plug('nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'})
    -- Visualize Indenting
    Plug('lukas-reineke/indent-blankline.nvim')
    
    -- Code Assistance ----------------------------------------------
    -- Language Server Protocol
    Plug('neovim/nvim-lspconfig')
    -- Auto Comment and Uncomment
    Plug('tpope/vim-commentary')
    -- Auto-Completion Tool Nvim-Cmp
    Plug('hrsh7th/nvim-cmp')
    -- LSP source for nvim-cmp
    Plug('hrsh7th/cmp-nvim-lsp')
    -- Snippets Plugin
    Plug('L3MON4D3/LuaSnip', {['tag'] = 'v2.*', ['do'] = 'make install_jsregexp'})
    -- Snippet source for nvim-cmp
    Plug('saadparwaiz1/cmp_luasnip')
    -- Coc
    Plug('ms-jpq/coq_nvim') -- , {['branch'] = 'coc'}
    Plug('ms-jpq/coq.artifacts', {['branch'] = 'artifacts'})
    Plug('ms-jpq/coq.thirdparty', {['branch'] = '3p'})
    -- TODO:
    -- Plug("rafamadriz/friendly-snippets") Check: https://github.com/L3MON4D3/LuaSnip
    -- Plug('hrsh7th/cmp-buffer')
    -- Plug('hrsh7th/cmp-path')
    -- Plug('hrsh7th/cmp-cmdline')

    -- Commonly used ------------------------------------------------
    -- Optional, but used in: nvim-tree, barbar
    Plug('nvim-tree/nvim-web-devicons')
    
    -- Experimental Plugins /  To be checked ...
    Plug('marko-cerovac/material.nvim') -- Colorscheme material
    Plug('akinsho/git-conflict.nvim') -- Git-conflict visualization
    -- TODO: Check Plug('numToStr/Comment')
    -- TODO: Also check out the following
    -- Plug('windwp/nvim-autopairs') -- Autopairs ?!
    -- Plug('mg979/vim-visual-multi') -- Multiple cursors, must see!
    -- Plug('ryanoasis/vim-devicons') -- VimDevIcons (beautiful icons)
    -- Plug('tpope/vim-surround') -- Surround (parentheses, brackets, quotes, XML tags)
    -- Plug('mhinz/vim-startify')
    -- Plug('ryanoasis/vim-devicons')
    -- Plug('honza/vim-snippets')
    -- Plug('preservim/tagbar') -- Tagbar for code navigation
    -- Plug('terryma/vim-multiple-cursors') -- CTRL + N for multiple cursors
vim.call('plug#end') -- call plug#end()


-- General Editor Settings -----------------------------------------------------

opt.encoding = 'UTF-8'
opt.guifont = "Hack Nerd Font"
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
opt.scrolloff = 5
opt.colorcolumn = "101"
opt.showmatch = true
opt.cursorline = false
opt.showmode = false
opt.incsearch = true
opt.laststatus = 3


-- Additional Configuration Scripts in './Lua' ---------------------------------

-- IDE Editor Stuff
require('cfg_nvimtree')
require('cfg_barbar')
require('cfg_treesitter')
require('cfg_lualine')
require('cfg_colorscheme')

-- Code Assistance Stuff
require('cfg_lsp_coq_luasnip')
require('cfg_blankline')
require('cfg_gitconflict')


-- Key Remappings --------------------------------------------------------------

local opts = { noremap = true, silent = true }

-- Instant quit by Ctrl-q
keymap.set('n', '<C-q>', vim.cmd.q, opts)
keymap.set('i', '<C-q>', '<ESC>', opts)
-- Save file by: Ctrl-s
keymap.set('n', '<C-s>', vim.cmd.w, opts)
-- Setup bright daylight or darg night colorscheme
keymap.set('n', '<leader>ll', '<Cmd>Light<CR>', opts)
keymap.set('n', '<leader>dd', '<Cmd>Dark<CR>', opts)

-- NvimTree Keymapping
keymap.set('n', '<C-n>', vim.cmd.NvimTreeToggle, opts)
keymap.set('n', '<C-m>', vim.cmd.NvimTreeFocus, opts)

-- Telescope relevant configuration
local builtin = require('telescope.builtin')
keymap.set('n', '<leader>ff', builtin.find_files, opts)
keymap.set('n', '<leader>fg', builtin.live_grep, opts)
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
keymap.set('n', '<A-<>', '<Cmd>BufferMovePrevious<CR>', opts)
keymap.set('n', '<A->>', '<Cmd>BufferMoveNext<CR>', opts)
keymap.set('n', '<C-w>', '<Cmd>BufferClose<CR>', opts)

-- Setup colorscheme in dependency of current daytime --------------------------

if time < 10 or time > 17 then
    vim.cmd(':Dark')
end

