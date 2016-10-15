" Typescript check
let g:syntastic_typescript_checkers = ['tsuquyomi']

" Javascript check
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
" let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_html_checkers=['']
