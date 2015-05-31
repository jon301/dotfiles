let g:unite_source_rec_max_cache_files = 100000
let g:unite_prompt = '» '

call unite#custom#source('file_rec/async', 'matchers', ['matcher_project_ignore_files', 'matcher_default'])
