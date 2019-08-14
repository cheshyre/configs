set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

" Remove trailing whitespace on writes
autocmd BufWritePre *.py :%s/\s\+$//e

" Enable aggressive python highlighting
let g:python_highlight_all=1

" Show docstrings in Python folds
let g:SimpylFold_docstring_preview=1

" " Function for Semshi highlights
" function MyCustomHighlights()
"   hi semshiLocal           ctermfg=9 guifg=#ff875f
"   hi semshiGlobal          ctermfg=10 guifg=#ffaf00
"   hi semshiImported        ctermfg=10 guifg=#ffaf00 cterm=bold gui=bold
"   hi semshiParameter       ctermfg=14  guifg=#5fafff
"   hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
"   hi semshiFree            ctermfg=11 guifg=#ffafd7
"   hi semshiBuiltin         ctermfg=13 guifg=#ff5fff
"   hi semshiAttribute       ctermfg=12  guifg=#00ffaf
"   hi semshiSelf            ctermfg=13 guifg=#b2b2b2
"   hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
"   hi semshiSelected        ctermfg=15 guifg=#ffffff ctermbg=1 guibg=#d7005f
" endfunction
"
" " Apply Semshi settings for Python
" autocmd FileType python call MyCustomHighlights()
" autocmd ColorScheme * call MyCustomHighlights()

" " Diable Jedi-vim since we have deoplete
" let g:jedi#auto_initialization = 1
" let g:jedi#completions_enabled = 0
" let g:jedi#auto_vim_configuration = 0
" let g:jedi#smart_auto_mappings = 0
" let g:jedi#popup_on_dot = 0
" let g:jedi#completions_command = ""
" let g:jedi#show_call_signatures = "1"
"
" " Enable docstrings
" let g:deoplete#sources#jedi#show_docstring = 1

" Set Black linelength to 79
let g:black_linelength = 79

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

