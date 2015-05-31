" show cursor line only on the current window
autocmd WinEnter * set cursorline
autocmd WinLeave * set nocursorline

" remove non acsii characters before save
" autocmd BufWrite * silent! %s/[\x80-\xff]//

" remove trailing whitespaces before save
autocmd BufWrite * silent! %s/[\r \t]\+$//

" authentification inside vim
command! -bar -nargs=0 SudoW :silent exe "write !sudo tee % >/dev/null"|silent edit!

" clear last search highlight by typing ":C"
command! C let @/=""
