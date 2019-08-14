set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=79
set expandtab
set autoindent

" Remove trailing whitespace on writes
autocmd BufWritePre *.tex :%s/\s\+$//e

" Start neovim remote for compilation
let g:vimtex_compiler_progname = 'nvr'

" Set compilation to latexrun from latexmk
let g:vimtex_compiler_method = 'latexrun'

let g:tex_flavor='latex'
