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
Plug 'vim-airline/vim-airline-themes'
Plug 'chrisbra/NrrwRgn'
Plug 'diepm/vim-rest-console'
Plug 'dhruvasagar/vim-table-mode'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'evidens/vim-twig'
Plug 'flazz/vim-colorschemes'
Plug 'foosoft/vim-argwrap'
" Plug 'flowtype/vim-flow', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'gavocanov/vim-js-indent', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'godlygeek/tabular'
Plug 'gregsexton/gitv'
Plug 'groenewege/vim-less'
Plug 'heavenshell/vim-jsdoc'
Plug 'int3/vim-extradite'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'jiangmiao/auto-pairs'
Plug 'jreybert/vimagit'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-fnr'
Plug 'junegunn/vim-oblique'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'leafgarland/typescript-vim'
Plug 'linluk/vim-websearch'
Plug 'Lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'maksimr/vim-jsbeautify'
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'mattn/emmet-vim', {'for': ['html', 'html.twig']}
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mhinz/vim-startify'
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mzlogin/vim-markdown-toc'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'nelstrom/vim-visual-star-search'
Plug 'othree/html5.vim'
Plug 'othree/javascript-libraries-syntax.vim', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'Olical/vim-enmasse'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'plasticboy/vim-markdown', { 'as': 'vim-markdown-plasticboy' }
Plug 'Quramy/tsuquyomi', {'do': 'npm install'}
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim'
Plug 'rizzatti/dash.vim'
Plug 'scrooloose/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'Shougo/neomru.vim'
if has('nvim')
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins'  }
  Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern', 'for': ['javascript', 'javascript.jsx'] }
  Plug 'neomake/neomake'
else
  Plug 'Shougo/neocomplete.vim'
  " Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer' }
endif
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'sjl/gundo.vim', {'on': 'GundoToggle'}
Plug 'taiansu/nerdtree-ag'
Plug 'teoljungberg/vim-grep'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'thalesmello/webcomplete.vim'
Plug 'thinca/vim-quickrun'
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'tpope/vim-abolish'
"Plug 'tpope/vim-dispatch' " Commented out, conflicts with vim-grep & tmux
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown', { 'as': 'vim-markdown-tpope' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'unblevable/quick-scope'
Plug 'valloric/MatchTagAlways'
Plug 'valloric/ListToggle'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/showhide.vim'
Plug 'vimwiki/vimwiki'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'fatih/vim-go'

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
