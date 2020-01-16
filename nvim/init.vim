" =============== Plugin Initialization ===============
" This loads all the plugins specified in ~/.vim/plugins.vim
if filereadable(expand("~/.config/nvim/plugins.vim"))
  source ~/.config/nvim/plugins.vim
endif

" Load sensible settings before rest
runtime! plugin/sensible.vim

" ================ General Settings ====================
set fileformat=unix
set encoding=utf-8
filetype plugin indent on
set number						" Show line numeber for current line
set relativenumber				" Relative line numbers for lines other than current
set tabstop=2					" Tabs are 2 spaces wides
set softtabstop=2
set shiftwidth=2
set expandtab					" Expand tabs as spaces
set history=700					" Sets how many lines of history
set backspace=indent,eol,start	" Allow backspace in insert mode
set showmode					" Show current mode down the bottom
syntax on						" Syntax highlighting on
set showcmd						" Show what commands you’re typing
set laststatus=2				" Show status line
set modeline					" Allow modelines
set ruler						" Show current line and column position in file
set title						" Show file title in terminal tab
set cmdheight=2					" Sets the height of the CLI
set wildmenu					" Turn on auto complete for commands in CLI
" hi Normal guibg=NONE ctermbg=NONE

" Set leader
let mapleader = ","

" Avoid shift for commands
nnoremap ; :

" automatically rebalance windows on vim resize
autocmd VimResized * :wincmd =

" ================ Custom Settings ========================
" This loads all the settings specified in ~/.vim/settings.vim
if filereadable(expand("~/.config/nvim/settings.vim"))
  source ~/.config/nvim/settings.vim
endif
