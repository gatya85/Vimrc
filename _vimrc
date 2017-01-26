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
"execute pathogen#infect()

"Vim plug
call plug#begin()

"theme badwolf Plug 'sjl/badwolf'

"Ctrl P fuzzy search
Plug 'https://github.com/ctrlpvim/ctrlp.vim.git'

"ftl syntax
""Plug 'https://github.com/chaquotay/ftl-vim-syntax.git'
Plug 'https://github.com/andreshazard/vim-freemarker.git'

"emmet easy create html
Plug 'https://github.com/mattn/emmet-vim.git'

"indent
Plug 'https://github.com/Yggdroot/indentLine.git'

"nerd tree
Plug 'https://github.com/scrooloose/nerdtree.git'
Plug 'https://github.com/ervandew/supertab.git'
Plug 'https://github.com/vim-airline/vim-airline.git'
Plug 'https://github.com/sickill/vim-monokai.git'
Plug 'https://github.com/altercation/vim-colors-solarized.git'
Plug 'https://github.com/tpope/vim-commentary.git'
Plug 'https://github.com/pangloss/vim-javascript.git'
Plug 'https://github.com/vimwiki/vimwiki.git'
Plug 'https://github.com/vim-airline/vim-airline-themes.git'
Plug 'https://github.com/nathanaelkane/vim-indent-guides.git'
""Plug 'https://github.com/scrooloose/syntastic.git'
Plug 'https://github.com/vim-scripts/groovy.vim.git'
Plug 'https://github.com/easymotion/vim-easymotion.git'
""Plug 'https://github.com/abudden/taghighlight-automirror.git'
Plug 'FelikZ/ctrlp-py-matcher'
Plug 'https://github.com/jiangmiao/auto-pairs.git'
Plug 'tpope/vim-surround.git'
"Plug 'https://github.com/JazzCore/ctrlp-cmatcher.git'
call plug#end()

filetype plugin indent on
syntax on
set autochdir "auto change the directory to the current file

"set color scheme
colorscheme monokai

"set font size
set guifont=Courier\ New:h10

"remap semi colon and colon
nore ; :
nore : ;

"spaces and tabs
set tabstop=4 "number of visual spaces per tab
set softtabstop=4 "number of spaces in tab when editing
set expandtab "tabs are spaces
set shiftwidth=4 "how many space use for indent via >> command
set listchars=tab:>~,trail:. "make space and tabs visible
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
autocmd BufNewFile,BufReadPost *.ftl set filetype=freemarker

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
let g:airline#extensions#tabline#enabled = 1
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
let mapleader = "\<Space>"

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
""let $HOME = $USERPROFILE

"ctrlp set working directory
noremap <C-a> :CtrlP C:\cygwin64_2\home\baol01\stannah-trunk\<CR>
noremap <C-z> :CtrlP C:\cygwin64_2\home\baol01\stannah-staging\<CR>

"remap save
noremap <C-s> :w<CR>

"freemarker mapping
nnoremap <leader>fi :call FTLIf()<CR>
nnoremap <leader>fl :call FTLList()<CR>
nnoremap <leader>fb :call FTLBigList()<CR>
nnoremap <leader>fa :call FTLAssign()<CR>
nnoremap <leader>fs :call FTLSwitch()<CR>

"remap
"noremap <leader>" <ESC>a""<ESC>i
"noremap <leader>' <ESC>a''<ESC>i
"noremap <leader>[ <ESC>a[]<ESC>i
"noremap <leader>{ <ESC>a{}<ESC>i
"noremap <leader>( <ESC>a()<ESC>i
"inoremap " ""<ESC>i
"inoremap ' ''<ESC>i
"inoremap [ []<ESC>i
"inoremap { {}<ESC>i
"inoremap ( ()<ESC>i

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

"syntastic config
""set statusline+=%#warningmsg#
""set statusline+=%{SyntasticStatuslineFlag()}
""set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"toggle syntax highlight
noremap <Left> <ESC>:setfiletype freemarker<CR>
noremap <Right> <ESC>:setfiletype javascript<CR>

"prevent vim to add new line at the end of file"
set noeol

"map realign tab and create macro put in q register
""nnoremap <F6> qq^i<TAB><ESC>jq
let @t = '^i	j'
let @y = '^f>a2f>^f>aj'

"comment ftl"
nnoremap <leader>fm ^i<!-- <ESC>A --><ESC>
nnoremap <leader>fu ^df<space>$bdf>

"buffer mapping"
nnoremap <Tab> :bnext<CR>
nnoremap <S-Tab> :bprevious<CR>
nnoremap <C-X> :bdelete<CR>
nmap <Leader>b :CtrlPBuffer<CR>

"paste "
nnoremap <leader>v "*p
nnoremap <leader>p "0p

" use ctrl-p python matcher
if !has('python')
        echo 'In order to use pymatcher plugin, you need +python compiled vim'
    else
        let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
    endif

"" The Silver Searcher
if executable('pt')
  " Use ag over grep
  set grepprg=pt\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'pt -l --nocolor -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  "let g:ctrlp_use_caching = 0
endif

"close buffer without losing split.
nnoremap <leader>c :bp\|bd #<CR>

"merge line without space
"nnoremap J Jx
