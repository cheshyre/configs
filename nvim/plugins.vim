" Load vim-plug
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
  execute '!curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.local/share/nvim/plugged')

" Get sensible defaults
Plug 'tpope/vim-sensible'

set rtp+=~/.config/nvim/plugins/

" General plugins
runtime interface.plugins
runtime linting.plugins
runtime autocomplete.plugins
runtime git.plugins
runtime search.plugins
runtime buffer.plugins
runtime text_manip.plugins

" Language specific plugins
runtime python.plugins
runtime latex.plugins
runtime markdown.plugins

call plug#end()
