set tabstop=4
set softtabstop=4
set shiftwidth=4
set textwidth=79
set expandtab
set autoindent

" Highlight bad white space
" This isnt working currently for some reason
" match BadWhitespace /\s\+$/

let python_highlight_all=1
syntax on

" Show docstrings in Python folds
let g:SimpylFold_docstring_preview=1

" python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
