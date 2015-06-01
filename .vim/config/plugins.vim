" ------------------------------------------------------------
" Plugin manager

" auto install plugin manager
let s:install_plugins = 0
if !filereadable($HOME . '/.vim/autoload/plug.vim')
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  let s:install_plugins = 1
endif

" plugin list
call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'breuckelen/vim-resize'
Plug 'bling/vim-airline'
Plug 'chrisbra/NrrwRgn'
Plug 'csscomb/vim-csscomb'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'flazz/vim-colorschemes'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }
Plug 'Lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'mattn/emmet-vim', {'for': ['html', 'html.twig']}
Plug 'mhinz/vim-startify'
Plug 'nelstrom/vim-visual-star-search'
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Shougo/neomru.vim'
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
Plug 'taiansu/nerdtree-ag', {'on': 'NERDTreeToggle'}
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'vim-scripts/matchit.zip'

" code snippets
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
call plug#end()

" auto install plugins
if s:install_plugins
  PlugInstall
  let s:install_plugins = 0
endif

" ------------------------------------------------------------
" Plugin configurations

source ~/.vim/config/plugins/vim-gitgutter.vim
source ~/.vim/config/plugins/vim-startify.vim
source ~/.vim/config/plugins/nerdtree.vim
source ~/.vim/config/plugins/pdv.vim

