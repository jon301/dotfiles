" show the signs column even if it is empty, useful for the vim-git-gutter plugin
autocmd BufEnter * sign define dummy
autocmd BufEnter * execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')

" trade a little accuracy for speed
let g:gitgutter_realtime = 0
let g:gitgutter_eager = 0
