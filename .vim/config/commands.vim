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
" autocmd BufWrite * silent! %s/[\r \t]\+$//

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

" always show text normally (override roamer plugin value)
autocmd BufRead * set conceallevel=0

" generate plantuml svg/txt file
" -Djava.awt.headless=true : prevent Java to take over window focus
" open -g : does not bring the application to the foreground.
command! PlantUmlSvg :AsyncRun! java -Djava.awt.headless=true -jar $HOME/.vim/plugged/vim-slumlord/plantuml.jar -tsvg % && open -g %:r.svg
command! PlantUmlTxt :AsyncRun! java -Dapple.awt.UIElement=true -splash: -jar $HOME/.vim/plugged/vim-slumlord/plantuml.jar -charset UTF-8 -tutxt %
