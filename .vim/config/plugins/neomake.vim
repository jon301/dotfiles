let g:neomake_javascript_enabled_makers = ['eslint']
let g:neomake_javascript_eslint_exe = './node_modules/.bin/eslint'

augroup mygroup
  " Clear autocommands before adding them. Useful when you reload the .vimrc
  autocmd!
  autocmd BufRead,BufWritePost *.js Neomake
augroup END
