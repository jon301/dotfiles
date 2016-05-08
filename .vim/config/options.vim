" http://vimdoc.sourceforge.net/htmldoc/options.html

" make Vim either more Vi-compatible, or make Vim behave in a more useful way
set nocompatible

" disable file type detection
" filetype off

" print the line number in front of each line
set number

" improves smoothness of redrawing when there are multiple windows and the terminal does not support a scrolling region
set ttyfast

" screen will not be redrawn while executing macros
set lazyredraw

" when a file has been detected to have been changed outside of Vim and	it has not been changed inside of Vim, automatically read it again
set autoread

" show tabs as CTRL-I is displayed, display $ after end of line. Useful to see the difference between tabs and spaces and for trailing blanks
set list

" highlight the screen line of the cursor
set cursorline

" history of previous search patterns
set history=100

" maximum number of changes that can be undone
set undolevels=100

" minimal number of screen lines to keep above and below the cursor
set scrolloff=3

" minimal number of lines to scroll when the cursor gets off the screen
set scrolljump=3

" command-line completion operates in an enhanced mode
set wildmenu

" show the line and column number of the cursor position
set ruler

" when there is a previous search pattern, highlight all its matches
set hlsearch

" ignore case in search patterns
set ignorecase

" while typing a search command, show where the pattern, as it was typed so far, matches
set incsearch

" when a bracket is inserted, briefly jump to the matching one
set showmatch

" disable beep or screen flash for error messages
set noerrorbells
set novisualbell
set vb t_vb=

" end-of-line formats to prevent bad carriage return
set ffs=unix,dos,mac

" use the same symbols as TextMate for tabstops and EOLs
set listchars=nbsp:¬,eol:¶,tab:▸\ ,extends:»,precedes:«,trail:•

" make a backup before overwriting a file
set backup
set writebackup
set backupdir=~/.vim/backup
set directory=~/.vim/swap

" saves undo history to an undo file when writing a buffer to a file, and restores undo history from the same file on buffer read
set undofile
set undodir=~/.vim/undofiles

" copy indent from current line when starting a new line
set autoindent

" do smart autoindenting when starting a new line
set smartindent

" Don't wrap lines
set nowrap

" number of spaces to use for each step of (auto)indent
set shiftwidth=4 softtabstop=4 tabstop=4

" always round the indent to a multiple of 'shiftwidth'
set shiftround

" use the appropriate number of spaces to insert a <Tab>
set expandtab

" always show the status line
set ls=2

" line max width
set textwidth=80

" display a line at the edge of the set textwidth
set cc=+1

" open new split panes to right and bottom, which feels more natural than Vim's default
set splitbelow
set splitright

" encoding used for the terminal
set termencoding=utf-8

" disable autocomplete preview menu
set completeopt-=preview

" auto format options
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set formatoptions-=t

" allow backspacing over autoindent, line breaks, start of insert
set backspace=indent,eol,start

" use the system clipboard
set clipboard=unnamed,unnamedplus

" controls the behavior when switching between buffers
set switchbuf+=usetab,newtab

" all folds are always open
set nofoldenable
