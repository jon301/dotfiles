" toggle mouse
func! ToggleActiveMouse()
  if &mouse ==# "nv"
    set mouse=
    echo "Mouse disabled"
  else
    set mouse=nv
    echo "Mouse enabled"
  endif
endf

" try to execute csscomb
func! CSScomb()
  execute "silent !csscomb -c ~/.csscomb.json " . expand('%')
  redraw!
endf

" list all todos
" credits to : https://github.com/junegunn/dotfiles/blob/master/vimrc#L930
function! s:todo() abort
  let entries = []
  for cmd in ['git grep -n -e TODO -e FIXME -e XXX 2> /dev/null',
            \ 'grep -rn -e TODO -e FIXME -e XXX * 2> /dev/null']
    let lines = split(system(cmd), '\n')
    if v:shell_error != 0 | continue | endif
    for line in lines
      let [fname, lno, text] = matchlist(line, '^\([^:]*\):\([^:]*\):\(.*\)')[1:3]
      call add(entries, { 'filename': fname, 'lnum': lno, 'text': text })
    endfor
    break
  endfor

  if !empty(entries)
    call setqflist(entries)
    copen
  endif
endfunction
command! Todo call s:todo()

" Generate plantuml svg file
func! PlantUmlSvg()
  " open -g : does not bring the application to the foreground.
  execute "AsyncRun! java -jar $HOME/lib/java/plantuml.jar -tsvg % && open -g %:r.svg"
endf
