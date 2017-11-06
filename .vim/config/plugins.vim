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
Plug 'abaldwin88/roamer.vim'
Plug 'airblade/vim-gitgutter'
Plug 'AndrewRadev/linediff.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'aquach/vim-http-client'
Plug 'cohama/agit.vim'
Plug 'chaoren/vim-wordmotion'
Plug 'chrisbra/NrrwRgn'
Plug 'diepm/vim-rest-console'
Plug 'dhruvasagar/vim-table-mode'
Plug 'editorconfig/editorconfig-vim'
Plug 'ervandew/supertab'
Plug 'evidens/vim-twig'
Plug 'flazz/vim-colorschemes'
Plug 'foosoft/vim-argwrap'
Plug 'gavocanov/vim-js-indent', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'godlygeek/tabular'
Plug 'gregsexton/gitv'
Plug 'groenewege/vim-less'
Plug 'heavenshell/vim-jsdoc'
Plug 'int3/vim-extradite'
Plug 'itchyny/calendar.vim'
Plug 'itchyny/thumbnail.vim'
Plug 'itchyny/lightline.vim'
Plug 'janko-m/vim-test'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'jiangmiao/auto-pairs'
Plug 'jpalardy/vim-slime'
Plug 'jreybert/vimagit'
Plug 'junegunn/vim-online-thesaurus'
Plug 'junegunn/fzf', {'dir': '~/.fzf', 'do': './install --all'}
Plug 'junegunn/fzf.vim'
Plug 'junegunn/vim-github-dashboard', { 'on': ['GHDashboard', 'GHActivity'] }
Plug 'junegunn/vim-easy-align', { 'on': ['<Plug>(EasyAlign)', 'EasyAlign'] }
Plug 'junegunn/vim-pseudocl'
Plug 'junegunn/vim-fnr'
Plug 'junegunn/vim-slash'
Plug 'junegunn/gv.vim'
Plug 'junegunn/vim-xmark', { 'do': 'make' }
Plug 'leafgarland/typescript-vim'
Plug 'linluk/vim-websearch'
Plug 'Lokaltog/vim-easymotion'
Plug 'majutsushi/tagbar'
Plug 'maksimr/vim-jsbeautify'
Plug 'marijnh/tern_for_vim', {'do': 'npm install'}
Plug 'mattn/emmet-vim', {'for': ['html', 'css']}
Plug 'MattesGroeger/vim-bookmarks'
Plug 'mbbill/undotree', { 'on': 'UndotreeToggle' }
Plug 'mhinz/vim-grepper'
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
Plug 'qpkorr/vim-renamer'
Plug 'Quramy/tsuquyomi', {'do': 'npm install'}
Plug 'Raimondi/delimitMate'
Plug 'rking/ag.vim'
Plug 'rizzatti/dash.vim', { 'on': 'Dash' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree', { 'on': ['NERDTreeToggle', 'NERDTreeFind'] }
Plug 'Shougo/neomru.vim'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'taiansu/nerdtree-ag'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'thalesmello/webcomplete.vim'
Plug 'thinca/vim-quickrun'
Plug 't9md/vim-choosewin'
Plug 'tobyS/pdv'
Plug 'tobyS/vmustache'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown', { 'as': 'vim-markdown-tpope' }
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-ragtag'
Plug 'tpope/vim-surround'
Plug 'twitvim/twitvim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'unblevable/quick-scope'
Plug 'valloric/MatchTagAlways'
Plug 'valloric/ListToggle'
Plug 'vim-scripts/matchit.zip'
Plug 'vim-scripts/DrawIt'
Plug 'vim-scripts/showhide.vim'
Plug 'w0rp/ale'
Plug 'vimwiki/vimwiki'
Plug 'xolox/vim-colorscheme-switcher'
Plug 'xolox/vim-misc'
Plug 'fatih/vim-go'

" plantuml
Plug 'aklt/plantuml-syntax'
Plug 'scrooloose/vim-slumlord'
Plug 'skywind3000/asyncrun.vim'

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
