" Determines how a new Buffergator window will be opened
"   L   : vertical left (full screen height)
"   R   : vertical right (full screen height)
"   T   : horizontal top (full screen width)
"   B   : horizontal bottom (full screen width)
"   n/N : No split, uses existing window
let g:buffergator_viewport_split_policy = "B"

" Sets the default display regime for buffer listing
"   basename  : display buffer basename first, followed by directory [default]
"   filepath  : display full buffer filepath
"   bufname   : display buffer name
"   parentdir : display first level parent dirname
let g:buffergator_display_regime = "filepath"
