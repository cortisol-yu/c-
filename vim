sset encoding=utf8
let g:vimgdb_debug_file = ""
run macros/gdb_mappings.vim 

set langmenu=zh_CN.UTF-8

set imcmdline

source $VIMRUNTIME/delmenu.vim

source $VIMRUNTIME/menu.vim
set backspace=indent,eol,start
set whichwrap=b,s,<,>,[,] 
syntax on 

set nocompatible
set number
set cin
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set showmatch
set et
set autochdir

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

filetype plugin indent on
set completeopt=longest,menu

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"


map <F5> :w<CR>:make<CR>
imap <F5> :w<CR>:make<CR>

"map <F12> :call CompileCpp()<CR>
"func! CompileCpp()
"exec "w"
"exec "!g++ -g % -o /tmp/a"
"endfunc

map <F6> :call ExecCpp()<CR>
func! ExecCpp()
exec "!/tmp/a < /tmp/input_data"
endfunc

map <F9> :call SaveInputData()<CR>
func! SaveInputData()
exec "tabnew"
exec 'normal "+gP'
exec "w! /tmp/input_data"
endfunc

map <F8> :call RunPython()<CR>
func! RunPython()
exec "w"
exec "!python %"
endfunc


"source $VIMRUNTIME/mswin.vim
"behave mswin

map <A-c> NewTemplateTab cpp<cr>
map <A-p> NewTemplateTab python<cr>

"map nn :NewTemplateTab cpp<cr>
"map np :NewTemplateTab python<cr>
autocmd FileType python setlocal et sta sw=4 sts=4



let g:pydiction_location = '/home/dinosoft/.vim/pydiction/complete-dict'
set makeprg=g++\ -g\ %\ -o\ /tmp/a   
autocmd FileType cpp nmap <C-N> :cn<cr>
autocmd FileType cpp nmap <C-P> :cp<cr>
color tango-desert

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {<CR>}<ESC>O
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
":inoremap " ""<ESC>i
":inoremap ' ''<ESC>i

function ClosePair(char)
  if getline('.')[col('.') - 1] == a:char
      return "\<Right>"
  else
      return a:char
  endif
endfunction

nmap <S-Insert> "+gP
imap <S-Insert> <ESC><S-Insert>i
vmap <C-C> "+y
vmap <S-Insert> "+gP

nmap <C-left> gt
imap <C-left> gt

nmap <C-right> gT
imap <C-right> gT

nmap <C-S> :w!
imap <C-S> :w!

map <C-A> ggVG
