" allow extra key combinations. e.g. map <leader>tn :tabnew<cr>
let mapleader = ","

" don't use alt keys for menus
set winaltkeys=no

" smart way to move between splitted windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-w>j <nop>
nnoremap <c-w>k <nop>
nnoremap <c-w>h <nop>
nnoremap <c-w>l <nop>

" switch next window
nnoremap <tab> <c-w>w

" toggle mouse on or off
nnoremap <leader><cr> :call ToggleActiveMouse()<cr>

" wrap
nnoremap <leader>nw :set nowrap<cr>
nnoremap <leader>sw :set wrap<cr>

" make
" nnoremap <leader>m :!make compile pack<cr>

" quick way to recall macro "a"
nnoremap <f2> @a

" ------------------------------------------------------------
" Plugins

" gundo
" https://github.com/sjl/gundo.vim
nnoremap <leader>gu :GundoToggle<cr>

" tagbar
" https://github.com/majutsushi/tagbar
nnoremap <leader>tt :TagbarToggle<cr>

" nerdtree ("m" to open menu)
" https://github.com/scrooloose/nerdtree
nnoremap <leader>nt :NERDTreeToggle<cr>
" find the current file in the tree
nnoremap <leader>nf :NERDTreeFind<cr>

" nerdcommenter
" https://github.com/scrooloose/nerdcommenter
map <s-c> ,c<space>

" tags
" nnoremap tt <c-]>
nnoremap tt :tab split <cr>:exec("tag ".expand("<cword>"))<cr>

