
" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

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

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'
" set timeoutlen=100

" Single mappings
"
" Find all files
let g:which_key_map['o'] = [ ':Telescope find_files' , 'find file' ]
" Find git files
let g:which_key_map['O'] = [ ':Telescope git_files'  , 'git ls-file' ]
" ripgrep like grep through dir
let g:which_key_map['s'] = [ ':Telescope live_grep'  , 'grep live']
let g:which_key_map['b'] = [ ':Telescope buffers'         , 'find buffer']
let g:which_key_map['S'] = [ ':Telescope grep_string', 'grep' ]
" Find most recent files opened
let g:which_key_map['R'] = [ ':Telescope oldfiles '  , 'Recent files' ]
" Ranger files explorer
let g:which_key_map['E'] = [ ':RnvimrToggle'    , 'open file' ]
" Nerd tree files
let g:which_key_map['e'] = [ ':NERDTreeToggle'  , 'File Explorer' ]
" Startify LRU screen
let g:which_key_map['r'] = [ ':Startify'        , 'Startify' ]
"
" GIT commands
let g:which_key_map['G'] = {
      \ 'name' : '+GIT' ,
      \ 't' : [ ':SignifyToggle'   , 'changed lines' ],
      \ 'l' : [ ':GV'              , 'GIT log'],
      \ 'L' : [ ':GV!'             , 'GIT log file'],
      \ }
"
" file related commands
let g:which_key_map['f'] = {
      \ 'name' : '+file' ,
      \ 'd' : [ ':cd %:p:h'    , 'change dir' ],
      \ 'r' : [ ':so $MYVIMRC' , 'reload vim.rc' ],
      \ }
" / is for find
let g:which_key_map['/'] = {
      \ 'name' : '+history' ,
      \ '/' : [':History/'     , 'Find history'],
      \ 'f' : [':History'      , 'File history'],
      \ 'c' : [':History:'     , 'Command history'],
      \ 'm' : [':Marks'        , 'Marks'] ,
      \ }
" toggle related commands
let g:which_key_map['t'] = {
      \ 'name' : '+toggle' ,
      \ 'r' : [ ':set relativenumber!'    , 'enable relative numbers'],
      \ 'h' : [ ':noh'                    , 'disable search highlight'],
      \ }
"
" h for help
let g:which_key_map['h'] = {
      \ 'name' : '+help' ,
      \ 'c' : [':Commands'     , 'Find command'],
      \ 'p' : [':Helptags'     , 'Find help tags'] ,
      \ 'k' : [':Maps'         , 'Normal key maps'] ,
      \ 'w' : [':Windows'      , 'Windows'],
      \ 'F' : [':FZF  '        , 'Open FZF'],
      \ }

"      \ 'name' : '+search' ,
"      \ '/' : [':History/'     , 'search History'],
"      \ ';' : [':Commands'     , 'Commands'],
"      \ 'a' : [':Ag'           , 'text Ag'],
"      \ 'b' : [':BLines'       , 'buffer Blines'],
"      \ 'B' : [':Buffers'      , 'open Buffers'],
"      \ 'c' : [':Commits'      , 'Commits'],
"      \ 'C' : [':BCommits'     , 'buffer commits'],
"      \ 'f' : [':Files'        , 'Files'],
"      \ 'g' : [':GFiles'       , 'git files'],
"      \ 'G' : [':GFiles?'      , 'modified git files'],
"      \ 'h' : [':History'      , 'file history'],
"      \ 'H' : [':History:'     , 'command history'],
"      \ 'l' : [':Lines'        , 'Lines'] ,
"      \ 'm' : [':Marks'        , 'Marks'] ,
"      \ 'M' : [':Maps'         , 'normal maps'] ,
"      \ 'p' : [':Helptags'     , 'help tags'] ,
"      \ 'P' : [':Tags'         , 'project tags'],
"      \ 's' : [':Snippets'     , 'snippets'],
"      \ 'S' : [':Colors'       , 'color schemes'],
"      \ 't' : [':Rg'           , 'text Rg'],
"      \ 'T' : [':BTags'        , 'buffer tags'],
"      \ 'w' : [':Windows'      , 'Windows'],
"      \ 'y' : [':Filetypes'    , 'file types'],
"      \ 'z' : [':FZF'          , 'FZF'],
"      \ }
"
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
let g:which_key_map['B'] = {
      \ 'name' : '+buffers' ,
      \ 's' : ['Buffers','show :Buffers']       ,
      \ 'l' : ['ls'    , 'show :ls']            ,
      \ 'd' : ['bd'    , 'delete :bd']          ,
      \ 'n' : ['bn'    , 'next :bn']            ,
      \ 'p' : ['bp'    , 'next :bp']            ,
      \ }
" Register which key map
call which_key#register('<Space>', "g:which_key_map")
