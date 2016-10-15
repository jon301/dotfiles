" custom file types
autocmd BufNewFile,BufRead *.ejs set filetype=html
autocmd BufNewFile,BufRead *.jsx set filetype=javascript.jsx
autocmd BufNewFile,BufRead *.html.twig set filetype=html

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

" will cause the quickfix window to open after any grep invocation
autocmd QuickFixCmdPost *grep* cwindow

" fix background color bleeding
autocmd BufEnter * redraw

" automatically close buffer if nerdtree is the only active buffer
" https://github.com/scrooloose/nerdtree/issues/21
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
