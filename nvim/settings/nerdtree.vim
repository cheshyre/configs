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
let NERDTreeIgnore = [
  \ '\.pyc$', 
  \ '__pycache__'
\ ]
