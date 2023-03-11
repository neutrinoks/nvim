-- General editor settings ----------------------------------------------------
vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set autoindent')
vim.cmd('set tabstop=4')
vim.cmd('set shiftwidth=4')
vim.cmd('set smarttab')
vim.cmd('set softtabstop=4')
vim.cmd('set mouse=a')


-- Key Remappings -------------------------------------------------------------

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)


-- Plugin-Manager / Plugins ---------------------------------------------------

local Plug = vim.fn['plug#']
vim.call('plug#begin') -- call plug#begin()

	-- more to be added here
	Plug('https://github.com/vim-airline/vim-airline') -- Airline
	Plug('https://github.com/preservim/nerdtree') -- NerdTree
	Plug('https://github.com/nvim-treesitter/nvim-treesitter', {['do'] = ':TSUpdate'}) -- Tree-sitter

vim.call('plug#end') -- call plug#end()


-- NerdTree Configuration -----------------------------------------------------

-- nnoremap <C-f> :NERDTreeFocus<CR>
vim.cmd('nnoremap <C-n> :NERDTree<CR>')
vim.cmd('nnoremap <C-t> :NERDTreeToggle<CR>')



-- Additional Configuration Scripts in './Lua' --------------------------------

require('treesitter')

