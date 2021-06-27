" Lint only when saving the file
let g:ale_lint_on_text_changed = 'never'
" Don't run when the file is opened
let g:ale_lint_on_enter = 0
let g:ale_fix_on_save = 1
let g:ale_linters = { "python" : ['flake8'] }
let g:ale_fixers  = { '*': ['remove_trailing_lines', 'trim_whitespace'], 'python': ['black'] }
" Ignore certain warnings
let g:ale_python_flake8_options = '--ignore=E501' " ignore long-lines
