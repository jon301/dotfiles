" save bookmarks per working dir, the folder you opened vim from
let g:bookmark_save_per_working_dir = 1

" save bookmarks when leaving a buffer, load when entering one
let g:bookmark_manage_per_buffer = 1

" automatically close bookmarks split when jumping to a bookmark
let g:bookmark_auto_close = 1

" enables/disables line highlighting
let g:bookmark_highlight_lines = 1

" enables/disables warning when clearing all bookmarks
let g:bookmark_show_warning = 1

" unbind the keys whenever Nerdtree becomes active
let g:bookmark_no_default_key_mappings = 1
function! BookmarkMapKeys()
    nmap mm :BookmarkToggle<CR>
    nmap mi :BookmarkAnnotate<CR>
    nmap mn :BookmarkNext<CR>
    nmap mp :BookmarkPrev<CR>
    nmap ma :BookmarkShowAll<CR>
    nmap mc :BookmarkClear<CR>
    nmap mx :BookmarkClearAll<CR>
endfunction
function! BookmarkUnmapKeys()
    unmap mm
    unmap mi
    unmap mn
    unmap mp
    unmap ma
    unmap mc
    unmap mx
endfunction
autocmd BufEnter * :call BookmarkMapKeys()
autocmd BufEnter NERD_tree_* :call BookmarkUnmapKeys()
