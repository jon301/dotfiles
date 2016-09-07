" Use deoplete.
let g:deoplete#enable_at_startup = 1
let g:deoplete#file#enable_buffer_path = 1 " autocomplete the files from the buffer path instead of the current directory
let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'  " This do disable full signature type on autocomplete

" Use tern_for_vim.
let g:tern#command = ["tern"]
let g:tern#arguments = ["--persistent"]
