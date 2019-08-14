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

" Apply Semshi settings for Python
autocmd FileType python call MyCustomHighlights()
autocmd ColorScheme * call MyCustomHighlights()
