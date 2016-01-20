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
Plug 'ap/vim-css-color'
Plug 'AndrewRadev/linediff.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'bling/vim-airline'
Plug 'chrisbra/NrrwRgn'
Plug 'diepm/vim-rest-console'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'evidens/vim-twig'
Plug 'flazz/vim-colorschemes'
Plug 'gregsexton/gitv'
Plug 'groenewege/vim-less'
Plug 'heavenshell/vim-jsdoc'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': 'yes \| ./install'}
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-fnr'
Plug 'junegunn/vim-oblique'
Plug 'Lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'maksimr/vim-jsbeautify'
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'mattn/emmet-vim', {'for': ['html', 'html.twig']}
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mhinz/vim-startify'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nelstrom/vim-visual-star-search'
Plug 'othree/html5.vim'
Plug 'Olical/vim-enmasse'
Plug 'pangloss/vim-javascript'
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
Plug 'taiansu/nerdtree-ag'
Plug 'teoljungberg/vim-grep'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
"Plug 'unblevable/quick-scope'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/DrawIt'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'

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

for fpath in split(globpath('~/.vim/config/plugins/', '*.vim'), '\n')
  exe 'source' fpath
endfor
