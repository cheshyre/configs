" Python indentation is 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent

" Remove trailing whitespace on writes
autocmd BufWritePre *.py :%s/\s\+$//e

" Enable aggressive python highlighting
let g:python_highlight_all=1

" Show docstrings in Python folds
let g:SimpylFold_docstring_preview=1

" Diable Jedi-vim since we have deoplete
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

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF

