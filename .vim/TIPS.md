## Display where an option has been set
`:verbose set conceallevel? concealcursor?`

## Vim profiling
Credits to : https://stackoverflow.com/a/12216578
```
:profile start profile.log
:profile func *
:profile file *
" At this point do slow actions
:profile pause
:noautocmd qall!
```
