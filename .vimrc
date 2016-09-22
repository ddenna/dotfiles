" ---- Split management ----
set splitbelow          " When HSplit, add screen below
set splitright          " When VSplit, add screen to the right

" Dealing with splitscreen, Alt + <key> to move between screens
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


" Store current session on file
nmap <c-s> :mksession! ~/.vim/prev_session <cr>

" Restore previoues session
nmap <c-a> :source ~/.vim/prev_session <cr>




" ---- Visuals ----

" Add colors!
syntax on

" Change tab key behavior
set expandtab
set shiftwidth=4
set softtabstop=4






" ---- Behavior ----

" Fix backspace on XTerm
set backspace=indent,eol,start		" allow backspacing over everything in insert mode

if &term=="xterm"
     set t_Co=8
     set t_Sb=[4%dm
     set t_Sf=[3%dm
endif
fixdel

" ViM features
set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search -- find matches as you type
set hlsearch            " Highlight search

" Redraw screen and run nohlsearch when pressing <CTRL-l>
nnoremap <silent> <C-l> :nohl<CR><C-l>

" Don't wake up system with blinking cursor:
" http://www.linuxpowertop.org/known.php
let &guicursor = &guicursor . ",a:blinkon0"





" ---- Vundle ----
set nocompatible              " Be iMproved, required -- Latest vim settings/options

source ~/.vim/plugins.vim





" ---- Laracasts: Vim mastery ----

let mapleader = ','   " The default <Leader> is '\', but ',' seems better
set number            " Let's activate line numbers





" ------ Visuals ------

set linespace=14      " gVim specific: Change lineheight
set t_CO=256          " Use 256 colors. Useful in terminal Vim





" ------ Mappings ------

" Make it easy to edit Vimrc file
nmap <Leader>ev :tabedit $MYVIMRC<cr>
" '' <Leader> key by default is '\', you can customize it
" '' <cr> <= Carriage Return

" List buffers <= :ls
nmap <Leader>l :ls<cr>

" Open a new tab
nmap <Leader>t :tabnew 

" Open a new Vertically split window
nmap <Leader>v :vsplit 





" ------ Plugins ------

" // CtrlP

" Check for variable names, tags 'n' shite
nmap <Leader>r :CtrlPBufTag<cr>

" Most Recently Used files
nmap <Leader>m :CtrlPMRUFiles<cr>

" Enable CtrlPBufTag
"let g:ctrlp_extensions = [ 'buffertag' ]

" Ignore some shite
let g:ctrlp_working_path_mode = 0

" Ignore some more shite
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$\|node_modules$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" How result are displayed
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:10,results:10'



" // NERDTree

" Make NERDTree easier to toggle
nmap <Leader>n :NERDTreeToggle<cr>

let NERDTreeHijackNetrw = 0



" ------ Auto-commands ------

" Automatically source Vimrc file on save
"augroup
"  " Clear out the group, this way we don't replicate
"  autocmd!
"  autocmd BufWritePost .vimrc source %
"augroup END

" Codes & Cheats
"
""" Mappings
" zz                <= Center the screen on cursor
" <c-^>             <= Return to previous location
" <c-[>             <= Go to function definition (requires ctags)
" -                 <= Run vinegar (requires vinega plugin)
