" Load vim-plug
if empty(glob("~/.local/share/nvim/site/autoload/plug.vim"))
  execute '!curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

call plug#begin('~/.local/share/nvim/plugged')

" Get sensible defaults
Plug 'tpope/vim-sensible'

set rtp+=~/.config/nvim/plugins/

" General plugins
runtime autocomplete.plugins.vim
runtime buffer.plugins.vim
runtime git.plugins.vim
runtime interface.plugins.vim
runtime linting.plugins.vim
runtime search.plugins.vim
runtime text_manip.plugins.vim

" Language specific plugins
runtime latex.plugins.vim
runtime markdown.plugins.vim
runtime python.plugins.vim

call plug#end()
