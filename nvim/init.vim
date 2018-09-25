" Load plugins
call plug#begin('~/.local/share/nvim/plugged')
" Get sensible defaults
Plug 'tpope/vim-sensible'

" Better settings for folding
Plug 'Konfekt/FastFold'

" Color scheme
Plug 'kristijanhusak/vim-hybrid-material'

" Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax checker on save
Plug 'vim-syntastic/syntastic'

" Autocomplete plugin
" Note: Requires additional setup
" vim/nvim must be compiled with Python support
Plug 'Valloric/YouCompleteMe'

" -- Python Plugins --
" Python folding plugin
Plug 'tmhedberg/SimpylFold'

" PEP8 conforming indents
Plug 'vim-scripts/indentpython.vim'

" PEP8 syntax checking
Plug 'nvie/vim-flake8'

call plug#end()

" Load sensible settings before vimrc so settings can be overrideen below
runtime! plugin/sensible.vim

" Remapping for splits in normal mode
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Useful setings in general
set fileformat=unix
set encoding=utf-8
filetype plugin indent on

" Set line numbers
set number

" Enable code folding
set foldmethod=indent
set foldlevel=99

" Map folding to spacebar in normal mode
nnoremap <space> za

" Color scheme settings
set background=dark
colorscheme hybrid_reverse

" Powerline theme
let g:airline_theme='term'

" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

