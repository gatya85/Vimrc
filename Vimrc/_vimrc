set nocompatible
" source $VIMRUNTIME/vimrc_example.vim
" source $VIMRUNTIME/mswin.vim
" behave mswin

"set diffexpr=MyDiff()
"function MyDiff()
"  let opt = '-a --binary '
"  if &diffopt =~ 'icase' | let opt = opt . '-i ' | endif
"  if &diffopt =~ 'iwhite' | let opt = opt . '-b ' | endif
"  let arg1 = v:fname_in
"  if arg1 =~ ' ' | let arg1 = '"' . arg1 . '"' | endif
"  let arg2 = v:fname_new
"  if arg2 =~ ' ' | let arg2 = '"' . arg2 . '"' | endif
"  let arg3 = v:fname_out
"  if arg3 =~ ' ' | let arg3 = '"' . arg3 . '"' | endif
"  let eq = ''
"  if $VIMRUNTIME =~ ' '
"    if &sh =~ '\<cmd'
"      let cmd = '""' . $VIMRUNTIME . '\diff"'
"      let eq = '"'
"    else
"      let cmd = substitute($VIMRUNTIME, ' ', '" ', '') . '\diff"'
"    endif
"  else
"    let cmd = $VIMRUNTIME . '\diff'
"  endif
"  silent execute '!' . cmd . ' ' . opt . arg1 . ' ' . arg2 . ' > ' . arg3 . eq
"endfunction

"Personal Settings.
"More to be added soon.
execute pathogen#infect()
filetype plugin indent on
syntax on
set autochdir "auto change the directory to the current file

"set color scheme
colorscheme badwolf 

"set font size
set guifont=Courier\ New:h11

"remap semi colon and colon
nore ; :
nore : ;

"spaces and tabs
set tabstop=4 "number of visual spaces per tab
set softtabstop=4 "number of spaces in tab when editing
set expandtab "tabs are spaces
set shiftwidth=4 "how many space use for indent via >> command
set listchars=tab:>~ "make space and tabs visible
set list

"UI config
set number "show line number
set showcmd "show command in bottom bar
set cursorline "highlight current line
set relativenumber "relative number for column 

"Breakindent 
set breakindent 
set showbreak=>>> " make break visible

"auto apply syntax for ftl
autocmd BufNewFile,BufReadPost *.ftl set filetype=ftl

"auto indent;
set autoindent
set smartindent

"remap the esc button in insert mode
:imap jk <Esc>

"open vim in fullscreen. this has to be at the end of vimrc
autocmd GUIEnter * simalt ~x "after gui load type command alt+space+x

"ctrlp set working directory
let g:crtlp_working_path_mode ='w'

"show command suggestion
set wildmenu

" move vertically by visual line
" nnoremap j gj
" nnoremap k gk

" show buffer in name instead of whole path
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_theme='powerlineish'
let g:airline_left_sep=''
let g:airline_right_sep=''
let g:airline_section_z=''

" hightlight last inserted text
" nnoremap gV `[V`]

" colorcolumn for text width
set colorcolumn=80

" searching option
set incsearch "search as characters are entered
set hlsearch " highlight matches
set ignorecase " ignore case when search
nnoremap <leader><space> :nohlsearch<CR> "turn off search highlight

" make backspace work 
set backspace=indent,eol,start

" vimrc related setting
nmap <silent> <leader>sv :source $MYVIMRC<CR>
nmap <silent> <leader>ev :e $MYVIMRC<CR>

" create new line without enter insert mode
map <Enter> o<ESC>
map <S-Enter> O<ESC>

" remap map leader key
let mapleader = ","

" Use ctrl-[hjkl] to select the active split!
"nmap <silent> <c-k> :wincmd k<CR>
"nmap <silent> <c-j> :wincmd j<CR>
"nmap <silent> <c-h> :wincmd h<CR>
"nmap <silent> <c-l> :wincmd l<CR>
map <c-h> <c-w>h
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l

" Move viminfo
let $HOME = $USERPROFILE

"ctrlp set working directory
noremap <C-a> :CtrlP C:\cygwin64_2\home\baol01\stannah-trunk\<CR>
noremap <C-z> :CtrlP C:\cygwin64_2\home\baol01\stannah-staging\<CR>

