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
