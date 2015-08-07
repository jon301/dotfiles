let g:startify_change_to_dir = 0
let g:startify_change_to_vcs_root = 1
let g:startify_enable_special = 0
let g:startify_list_order = [
    \ ['  Sessions:'],
    \ 'sessions',
    \ ['  Last recently modified files in the current directory:'],
    \ 'dir',
    \ ['  Last recently opened files:'],
    \ 'files',
    \ ['  Bookmarks:'],
    \ 'bookmarks',
    \ ]
let g:startify_relative_path = 1
let g:startify_session_delete_buffers = 1
let g:startify_session_dir = '~/.vimsessions'
let g:startify_session_persistence = 1
let g:startify_custom_header = [
    \ '     _                 _             _____  ___  _ ',
    \ '    | | ___  _ __     | | ___  _ __ |___ / / _ \/ |',
    \ ' _  | |/ _ \|  _ \ _  | |/ _ \|  _ \  |_ \| | | | |',
    \ '| |_| | (_) | | | | |_| | (_) | | | |___) | |_| | |',
    \ ' \___/ \___/|_| |_|\___/ \___/|_| |_|____/ \___/|_|',
    \ '',
    \ '',
    \ ]

" prevent opening file in a split window when using NerdTree or CtrlP
" https://github.com/mhinz/vim-startify/issues/6
autocmd FileType startify setlocal buftype=

