"" Only show quick-scope highlights after f/F/t/T is pressed
"function! Quick_scope_selective(movement)
"    let needs_disabling = 0
"    if !g:qs_enable
"        QuickScopeToggle
"        redraw
"        let needs_disabling = 1
"    endif
"
"    let letter = nr2char(getchar())
"
"    if needs_disabling
"        QuickScopeToggle
"    endif
"
"    return a:movement . letter
"endfunction
"
"let g:qs_enable = 0
"
"for i in  [ 'f', 'F', 't', 'T' ]
"    execute 'noremap <expr> <silent>' . i . " Quick_scope_selective('". i . "')"
"endfor

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']
