" Powerline theme
let g:airline_theme='term'

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
