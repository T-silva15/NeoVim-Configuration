" PLUGIN INSTALLATION 
"-------------------------------------------------------------------------------------------------------------------------"
call plug#begin('~/.config/nvim/plugged')

Plug 'vim-airline/vim-airline' " status bar
Plug 'https://github.com/preservim/tagbar' " tagbar for code navigation
Plug 'https://github.com/ryanoasis/vim-devicons' " developer Icons
Plug 'nvim-lua/plenary.nvim' " telescope dependency
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.5' } " locate and change between files
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " accurate highlighting
Plug 'neoclide/coc.nvim', {'branch': 'release'} " code suggestions and autocompletion
Plug 'https://github.com/mbbill/undotree' " allows switching between previous undoos and versions of a file
Plug 'https://github.com/rose-pine/neovim' " colorscheme
set encoding=UTF-8

call plug#end()



" CURRENT COLORSCHEME
"-------------------------------------------------------------------------------------------------------------------------"
:colorscheme rose-pine	



" KEYBINDINGS
"-------------------------------------------------------------------------------------------------------------------------"
" toggle sidebar for variables and other mappings <F8>
nmap <F8> :TagbarToggle<CR>

" shortcut for Netrw (CTRL-E)
nmap <C-e> :Ex<CR> 

" toggle undo history (CTRL-U)
nnoremap <C-u> :UndotreeToggle<CR> 

" toggle file finder (CTRL-F)
nnoremap <C-f> <cmd>Telescope find_files<cr>

" toggle live grep (CTRL-G)
nnoremap <C-g> <cmd>Telescope live_grep<cr>

" select option on CoC autocomplete <TAB>
inoremap <expr> <Tab> pumvisible() ? coc#_select_confirm() : "<Tab>"



" NVIM SETTINGS
"-------------------------------------------------------------------------------------------------------------------------"
" relative line numbers
:set number
:set relativenumber

" tab using 4 space characters 
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set autoindent

" smart indentation
:set smarttab

" always enable mouse
:set mouse=a

" no previews	
:set completeopt-=preview 



" AIR-LINE SETTINGS
"-------------------------------------------------------------------------------------------------------------------------"
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif



" UNICODE SYMBOLS
"-------------------------------------------------------------------------------------------------------------------------"
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
