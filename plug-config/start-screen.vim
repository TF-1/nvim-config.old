" define were the session are stored
let g:startify_session_dir = '~/.config/nvim/session'

let g:startify_session_autoload = 1
let g:startify_change_to_vcs_root = 1
"let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1
" Get rid of empty buffers on quit
let g:startify_enable_special = 0
let g:startify_change_to_dir = 0


" define the start screen
let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

" Define some bookmarks
let g:startify_bookmarks = [
            \ { 'i': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ '~/Code',
            \ ]

let g:startify_custom_header = [
  \ '    _   __         _    ___           ', 
  \ '   / | / /__  ____| |  / (_)___ ___   ',
  \ '  /  |/ / _ \/ __ \ | / / / __ `__ \  ', 
  \ ' / /|  /  __/ /_/ / |/ / / / / / / /  ',
  \ '/_/ |_/\___/\____/|___/_/_/ /_/ /_/   ',
  \ ]

