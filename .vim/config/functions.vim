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
