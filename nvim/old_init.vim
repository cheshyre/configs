" Function for markdown composer
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

" Function for Semshi highlights
function MyCustomHighlights()
  hi semshiLocal           ctermfg=9 guifg=#ff875f
  hi semshiGlobal          ctermfg=10 guifg=#ffaf00
  hi semshiImported        ctermfg=10 guifg=#ffaf00 cterm=bold gui=bold
  hi semshiParameter       ctermfg=14  guifg=#5fafff
  hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
  hi semshiFree            ctermfg=11 guifg=#ffafd7
  hi semshiBuiltin         ctermfg=13 guifg=#ff5fff
  hi semshiAttribute       ctermfg=12  guifg=#00ffaf
  hi semshiSelf            ctermfg=13 guifg=#b2b2b2
  hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
  hi semshiSelected        ctermfg=15 guifg=#ffffff ctermbg=1 guibg=#d7005f
endfunction

" Load plugins
call plug#begin('~/.local/share/nvim/plugged')

" -- Defaults --
" Get sensible defaults
Plug 'tpope/vim-sensible'

" -- Visual --
" Color scheme
" Plug 'kristijanhusak/vim-hybrid-material'
Plug 'dylanaraps/wal.vim'

" Powerline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" -- Linting and syntax --
" Syntax checker on save
" Plug 'vim-syntastic/syntastic'
Plug 'neomake/neomake'

" Autocomplete plugin
" Note: Requires additional setup
" vim/nvim must be compiled with Python support
Plug 'Valloric/YouCompleteMe'
" Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" -- Misc useful functions --
" Git wrapper for within nvim
Plug 'tpope/vim-fugitive'

" Search plugin
Plug 'ctrlpvim/ctrlp.vim'

" Buffer close script
Plug 'rbgrouleff/bclose.vim'

" Filetree navigation sidebar
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'

" Commenting plugin
Plug 'scrooloose/nerdcommenter'

" Better settings for folding
Plug 'Konfekt/FastFold'

" -- Python Plugins --
" Python folding plugin
Plug 'tmhedberg/SimpylFold'

" Highlighting for Python
Plug 'vim-python/python-syntax'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Autocompletion plugin for Python
Plug 'davidhalter/jedi-vim'
Plug 'deoplete-plugins/deoplete-jedi'

" PEP8 conforming indents
Plug 'vim-scripts/indentpython.vim'

" Black formatting tool
Plug 'python/black'

" -- LaTeX Plugins --
" Complete plugin for editing and compiling
Plug 'lervag/vimtex'

" -- Markdown Plugins --
" Plugin to preview and live update preview when editing markdown
Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }

" Markdown plugin for vim
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Additional pandoc for markdown
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

call plug#end()

" -- Defaults --
" Load sensible settings before vimrc so settings can be overridden below
runtime! plugin/sensible.vim

" Set leader
let mapleader = ","

" Avoid shift for commands
nnoremap ; :

" Standard clipboard shortcuts
inoremap <C-v> <ESC>"+pa
vnoremap <C-c> "+y

" Remapping for splits in normal mode
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Useful settings in general
set fileformat=unix
set encoding=utf-8
filetype plugin indent on

" Tabbing related defaults
set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab

" Set line numbers
set number

" -- Folding behavior --
" Enable code folding
set foldmethod=indent
set foldlevel=99

" Map folding to spacebar in normal mode
nnoremap <space> za

" -- Color scheme settings --
" Color scheme settings
set background=dark
colorscheme wal

" Apply Semshi settings for Python
autocmd FileType python call MyCustomHighlights()
autocmd ColorScheme * call MyCustomHighlights()

" Powerline theme
let g:airline_theme='term'

" Buffer navigation
set hidden
" nnoremap <leader>n :bnext<CR>
" nnoremap <leader>p :bprev<CR>

" -- Autocomplete settings --
" YouCompleteMe settings
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" " Enable deoplete
" let g:deoplete#enable_at_startup = 1
"
" " Close preview window after done
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif

" -- NERD commenter settings --
" Add spaces after comment delimiters by default
let g:NERDSpaceDelims = 1

" Use compact syntax for prettified multi-line comments
let g:NERDCompactSexyComs = 1

" Allow commenting and inverting empty lines (useful when commenting a region)
let g:NERDCommentEmptyLines = 1

" Enable trimming of trailing whitespace when uncommenting
let g:NERDTrimTrailingWhitespace = 1

" Enable NERDCommenterToggle to check all selected lines are commented or not
let g:NERDToggleCheckAllLines = 1

" -- Neomake settings --
" Run NeoMake on read and write operations
autocmd! BufReadPost,BufWritePost * Neomake

let g:neomake_serialize = 1
let g:neomake_serialize_abort_on_error = 1

call neomake#configure#automake('nrwi', 500)

" -- vimtex settings --
" Start neovim remote for compilation
let g:vimtex_compiler_progname = 'nvr'

" Set compilation to latexrun from latexmk
let g:vimtex_compiler_method = 'latexrun'

" -- CtrlP settings --
let g:ctrlp_match_window = 'bottom,order:ttb'
let g:ctrlp_switch_buffer = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'

" -- Nerdtree settings --
" appear on open
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif

" toggle keybind
nnoremap <leader>f :NERDTreeToggle<CR>
nnoremap <leader>m :NERDTreeClose<cr>:NERDTreeFind<CR>

" autoclose after last buffer is closed
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" git markers
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "x",
    \ "Staged"    : "+",
    \ "Untracked" : "~",
    \ "Renamed"   : ">",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "-",
    \ "Dirty"     : "X",
    \ "Clean"     : "O",
    \ "Unknown"   : "?"
\ }

" make Nerdtree prettier
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" hide files not relevant for development
let NERDTreeIgnore = ['\.pyc$', '__pycache__']

" Tabline settings
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
if !exists("g:airline_symbols")
  let g:airline_symbols={}
endif
let g:airline_symbols.linenr = ':: ln'
let g:airline_symbols.maxlinenr = ''
" let g:airline_section_z = airline#section#create(['%3p%%', 'linenr', 'maxlinenr', '%3v'])
" let g:airline_section_z = '%3pp %l:%c'


hi Normal guibg=NONE ctermbg=NONE
let g:tex_flavor='latex'
