
" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100


" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
  \| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler

" Single mappings
let g:which_key_map['N'] = [ ':NERDTreeToggle'  , 'NERD Toggle' ]
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'Coc explorer' ]
let g:which_key_map['F'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['r'] = [ ':RnvimrToggle'              , 'ranger' ]
let g:which_key_map['T'] = [ ':Rg'                        , 'search text' ]
let g:which_key_map['D'] = [ ':cd %:p:h'                 , 'change dir' ]
let g:which_key_map['R'] = [ ':so $MYVIMRC'               , 'reload vim.rc' ]

" s is for search
let g:which_key_map.s = {
      \ 'name' : '+search' ,
      \ '/' : [':History/'     , 'search History'],
      \ ';' : [':Commands'     , 'Commands'],
      \ 'a' : [':Ag'           , 'text Ag'],
      \ 'b' : [':BLines'       , 'buffer Blines'],
      \ 'B' : [':Buffers'      , 'open Buffers'],
      \ 'c' : [':Commits'      , 'Commits'],
      \ 'C' : [':BCommits'     , 'buffer commits'],
      \ 'f' : [':Files'        , 'Files'],
      \ 'g' : [':GFiles'       , 'git files'],
      \ 'G' : [':GFiles?'      , 'modified git files'],
      \ 'h' : [':History'      , 'file history'],
      \ 'H' : [':History:'     , 'command history'],
      \ 'l' : [':Lines'        , 'Lines'] ,
      \ 'm' : [':Marks'        , 'Marks'] ,
      \ 'M' : [':Maps'         , 'normal maps'] ,
      \ 'p' : [':Helptags'     , 'help tags'] ,
      \ 'P' : [':Tags'         , 'project tags'],
      \ 's' : [':Snippets'     , 'snippets'],
      \ 'S' : [':Colors'       , 'color schemes'],
      \ 't' : [':Rg'           , 'text Rg'],
      \ 'T' : [':BTags'        , 'buffer tags'],
      \ 'w' : [':Windows'      , 'Windows'],
      \ 'y' : [':Filetypes'    , 'file types'],
      \ 'z' : [':FZF'          , 'FZF'],
      \ }

let g:which_key_map['w'] = {
      \ 'name' : '+windows' ,
      \ 'w' : ['<C-W>w'     , 'next-window <C-W>w']    ,
      \ 'c' : ['<C-W>c'     , 'close-window <C-W>c']  ,
      \ 's' : ['<C-W>s'     , 'split-below <C-W>s']    ,
      \ 'v' : ['<C-W>v'     , 'split-right <C-W>v']    ,
      \ 'h' : ['<C-W>h'     , 'window-left <C-h>']           ,
      \ 'j' : ['<C-W>j'     , 'window-below <C-j>']          ,
      \ 'l' : ['<C-W>l'     , 'window-right <C-l>']          ,
      \ 'k' : ['<C-W>k'     , 'window-up <C-k>']             ,
      \ 'H' : ['<C-W>5<'    , 'expand-left']    ,
      \ 'J' : [':resize +5' , 'expand-below']   ,
      \ 'L' : ['<C-W>5>'    , 'expand-right']   ,
      \ 'K' : [':resize -5' , 'expand-up']      ,
      \ '=' : ['<C-W>='     , 'window-balance']  ,
      \ '?' : ['Windows'    , 'fzf-window']      ,
      \ }

let g:which_key_map['b'] = {
      \ 'name' : '+buffers' ,
      \ 's' : ['Buffers','show :Buffers']       ,
      \ 'l' : ['ls'    , 'show :ls']            ,
      \ 'd' : ['bd'    , 'delete :bd']          ,
      \ 'n' : ['bn'    , 'next :bn']            ,
      \ 'p' : ['bp'    , 'next :bp']            ,
      \ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")
