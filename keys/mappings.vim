"
" remapping modes: {  i = insert,n = normal,c = command,v = visual,
" S = select, x = visual, o = operator pending }
" Keys = { C=control, S=Shift, M=Alt/Meta }
"
" n  Normal mode map. Defined using ':nmap' or ':nnoremap'.
" i  Insert mode map. Defined using ':imap' or ':inoremap'.
" v  Visual and select mode map. Defined using ':vmap' or ':vnoremap'.
" x  Visual mode map. Defined using ':xmap' or ':xnoremap'.
" s  Select mode map. Defined using ':smap' or ':snoremap'.
" c  Command-line mode map. Defined using ':cmap' or ':cnoremap'.
" o  Operator pending mode map. Defined using ':omap' or ':onoremap'."
"
" Special keys { c = control, M = Meta, }
" <c-d> = control-d

nnoremap <silent> ,<SPACE> :nohlsearch<CR>

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" Use alt + hjkl to resize windows
nnoremap <silent> <M-j>    :resize -2<CR>
nnoremap <silent> <M-k>    :resize +2<CR>
nnoremap <silent> <M-h>    :vertical resize -2<CR>
nnoremap <silent> <M-l>    :vertical resize +2<CR>

" Keyboard mapping on MacOS (ALT-jklh)
nnoremap <silent> ∆    :resize -2<CR>
nnoremap <silent> ˚    :resize +2<CR>
nnoremap <silent>˙     :vertical resize -2<CR>
nnoremap <silent> ¬    :vertical resize +2<CR>

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>

" TAB in general mode will move to text buffer
nnoremap <TAB> :bnext<CR>
" SHIFT-TAB will go back
nnoremap <S-TAB> :bprevious<CR>

" Alternate way to save

nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :wq!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>
" <TAB>: completion.
inoremap <expr><C-SPACE> pumvisible() ? "\<C-n>" : "\<TAB>"

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Turn of search hightlight
nnoremap <F1> :noh
" Search and replace
nnoremap <F2> :%s/<c-r><c-w>/<c-r><c-w>/gc<c-f>$F/i
"noremap <Leader>o o<Esc>^Da
"
"nnoremap <Leader>O O<Esc>^Da
