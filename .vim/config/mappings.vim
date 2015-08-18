" allow extra key combinations. e.g. map <leader>tn :tabnew<cr>
" let mapleader = ","
let mapleader = "\<space>"

" don't use alt keys for menus
set winaltkeys=no

" resize windows with arrows
nnoremap <up> <c-w>5-
nnoremap <down> <c-w>5+
nnoremap <left> <c-w>5>
nnoremap <right> <c-w>5<

" smart way to move between splitted windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l
nnoremap <c-w>j <nop>
nnoremap <c-w>k <nop>
nnoremap <c-w>h <nop>
nnoremap <c-w>l <nop>

" switch next window with tab
nnoremap <tab> <c-w>w

" toggle mouse on or off
nnoremap <leader><cr> :call ToggleActiveMouse()<cr>

" wrap
nnoremap <leader>nw :set nowrap<cr>
nnoremap <leader>sw :set wrap<cr>

" make
" nnoremap <leader>m :!make<cr>

" quick way to recall macro "a"
nnoremap <f2> @a

" tabs
nnoremap <leader>tn :tabnew<cr>:NERDTreeToggle<cr><c-w>l:Startify<cr>

" jump in tag - new tab
nnoremap <leader>ti :tab split <cr>:exec("tag ".expand("<cword>"))<cr>

" jump in tag - new buffer
" nnoremap <leader>ti :exec("tag ".expand("<cword>"))<cr>

" jump out from tag
nnoremap <leader>tp :pop<cr>

" format json using python json.tool
map <leader>j !python -m json.tool<CR>

" execute csscomb on F5 on stylesheets only
autocmd FileType scss,less,css nnoremap <buffer> <F5> :call CSScomb()<CR>

" indent selected block with hjkl
xmap <silent> <c-j> :move '>+1<Cr>gv=gv
xmap <silent> <c-k> :move '<-2<Cr>gv=gv
xmap <silent> <c-h> <gv^
xmap <silent> <c-l> >gv^

" ------------------------------------------------------------
" Plugins

" gundo
nnoremap <leader>gu :GundoToggle<cr>

" tagbar
nnoremap <leader>tt :TagbarToggle<cr>

" nerdtree ("m" to open menu)
nnoremap <leader>nt :NERDTreeToggle<cr>
" find the current file in the tree
nnoremap <leader>nf :NERDTreeFind<cr>

" nerdcommenter
map <s-c> ,c<space>

" fzf
nnoremap <leader>ff :FZF!<cr>

" jsdoc
nnoremap <leader>dc :JsDoc<CR>

" gitgutter
nmap <leader>nh <Plug>GitGutterNextHunk
nmap <leader>ph <Plug>GitGutterPrevHunk

" EasyAlign
vmap <Enter> <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)

" vim-startify
nnoremap <leader>st :Startify<cr>

" gitv
" http://www.gregsexton.org/2011/05/gitv-range/
" List all commits of a file : type :Gitv!
" Select a commit you want to see with : press Enter
" Show diff between current and selected commit : press D

" vim-multiple-cursors
" <c-n> multiple times to select all occurrences of a word/paragraph

" vim-indent-guides
" <leader>ig

" vim-easymotion
" 2-character search motion
nmap s <Plug>(easymotion-s2)
nmap t <Plug>(easymotion-t2)
" n-character search motion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
" These `n` & `N` mappings are options. You do not have to map `n` & `N` to EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

" splitjoin
" gS to split a one-liner into multiple lines
" gJ (with the cursor on the first line of a block) to join a block into a single-line statement.

" vim-bookmarks
" mm : Add/remove bookmark at current line
" mi : Add/edit/remove annotation at current line
" mn : Jump to next bookmark in buffer
" mp : Jump to previous bookmark in buffer
" ma : Show all bookmarks (toggle)
" mc : Clear bookmarks in current buffer only
" mx : Clear bookmarks in all buffers

" vim-buffergator
" <leader>to : list tabs
" <leader>b : list buffers

