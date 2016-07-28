"let g:grepprg="git --no-pager grep --no-color -n"

" git grep in current file
" see : https://github.com/teoljungberg/vim-grep/blob/master/plugin/grep_motion.vim
nnoremap <silent> gl :set opfunc=<SID>GrepMotion<CR>g@
xnoremap <silent> gl :<C-U>call <SID>GrepMotion(visualmode())<CR>

function! s:CopyMotionForType(type)
  if a:type ==# 'v'
    silent execute "normal! `<" . a:type . "`>y"
  elseif a:type ==# 'char'
    silent execute "normal! `[v`]y"
  endif
endfunction

function! s:GrepMotion(type) abort
  let reg_save = @@

  call s:CopyMotionForType(a:type)

  execute ":Grep! " . shellescape(@@) . " %"

  let @@ = reg_save
endfunction
