set tabstop=2
set softtabstop=2
set shiftwidth=2
set textwidth=100
set expandtab
set autoindent

" Remove trailing whitespace on writes
autocmd BufWritePre *.tex :%s/\s\+$//e
