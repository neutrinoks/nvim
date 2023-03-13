-- Airline configuration
-- branch information will be displayed if one of the following plugins is installed:
-- fugitive.vim <https://github.com/tpope/vim-fugitive>
-- gina.vim     <https://github.com/lambdalisue/gina.vim>
-- lawrencium   <https://bitbucket.org/ludovicchabant/vim-lawrencium>
-- vcscommand   <http://www.vim.org/scripts/script.php?script_id=90>
vim.cmd [[
    let g:airline_extensions = ['branch', 'tabline']
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_sep = ' '
    let g:airline#extensions#tabline#left_alt_sep = '|'
    let g:airline#extensions#tabline#formatter = 'default'

    let g:airline_powerline_fonts = 0
    if !exists('g:airline_symbols')
        let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '❱'
    let g:airline_right_sep = '❮'
    let g:airline_symbols.colnr = ' C:'
    let g:airline_symbols.crypt = '🔒'
    let g:airline_symbols.linenr = ' L:'
    let g:airline_symbols.maxlinenr = ''
    let g:airline_symbols.branch = '⎇ '
    let g:airline_symbols.paste = '∥'
    "let g:airline_symbols.spell = 'Ꞩ'
    let g:airline_symbols.notexists = 'Ɇ'
    let g:airline_symbols.whitespace = ' '
]]
