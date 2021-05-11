
" set leader key
let g:mapleader = "\<Space>"

" === Identation
set tabstop=4                           " Insert 2 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set expandtab                           " Converts tabs to spaces
set smartindent                         " Makes indenting smart
set autoindent                          " Good auto indent
"set filetype indent on                  " File type specific indentation
set shiftround 
" === Search
set hlsearch                            " Enable search highlighting
set ignorecase                          " Ignore case when searching
set incsearch                           " Incremental search that shows partial matches
set smartcase                           " Automatically switch search to case-sensitive when search query contains an uppercase letter
" === Text Rendering
set display+=lastline                   " Always try to show a paragraph’s last line
set encoding=utf-8                      " The encoding displayed
set linebreak                           " Avoid wrapping a line in the middle of a word
set scrolloff=1                         " The number of screen lines to keep above and below the cursor.
set sidescrolloff=5                     " The number of screen columns to keep to the left and right of the cursor.
syntax enable                           " Enables syntax highlighing
set nowrap                              " Display long lines as just one line
" === User Interface
set ruler          			            " Show the cursor position all the time
set pumheight=10                        " Makes popup menu smaller
set cmdheight=2                         " More space for displaying messages
set t_Co=256                            " Support 256 colors
set showtabline=0                       " Do not show the TAB line for open files
set background=dark                     " tell vim what the background color looks like
set mouse=a                             " Enable your mouse
set cursorline                          " Enable highlighting of the current line
set laststatus=0                        " Always display the status line
set relativenumber                      " Line numbers
set number
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set wildmenu                            " Display command line’s tab complete options as a menu
set noerrorbells                        " Disable beep on errors.
set visualbell                          " Flash the screen instead of beeping on errors.
"set Colorscheme wombat256mod            " Change color scheme.
" === Code Folding
set foldmethod=indent                   " Fold based on indention levels.
set foldnestmax=3                       " Only fold up to three nested levels.
set nofoldenable                        " Disable folding by default."
" === Miscelleneous
set fileencoding=utf-8                  " The encoding written to file
set iskeyword+=-                      	" treat dash separated words as a word text object"
set conceallevel=0                      " So that I can see `` in markdown files
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=300                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
set formatoptions-=cro                  " Stop newline continution of comments
set clipboard=unnamedplus               " Copy paste between vim and everything else
set autoread                            " Automatically re-read files if unmodified inside Vim.
set backspace=indent,eol,start          " Allow backspacing over indention, line breaks and insertion start.
set backupdir=~/.cache/vim              " Directory to store backup files.
set confirm                             " Display a confirmation dialog when closing an unsaved file.
set dir=~/.cache/vim                    " Directory to store swap files.
set formatoptions+=j                    " Delete comment characters when joining lines.
set hidden                              " Hide files in the background instead of closing them.
set history=1000                        " Increase the undo limit.
set nomodeline                          " Ignore file’s mode lines; use vimrc configurations instead.
set noswapfile                          " Disable swap files.
set nrformats-=octal                    " Interpret octal as decimal when incrementing numbers.
"set shell                               " The shell used to execute commands.
"set spell                               " Enable spellchecking.
set wildignore+=.pyc,.swp               " Ignore files matching these patterns when opening files based on a glob pattern.
"set autochdir                          " Your working directory will always be the same as your working directory

au! BufWritePost $MYVIMRC source %      " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
cmap w!! w !sudo tee %
