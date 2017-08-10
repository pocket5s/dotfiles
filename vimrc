set nocompatible
filetype off
set runtimepath+=~/.vim/bundle/vundle
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'tpope/vim-git'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'mileszs/ack.vim'
Plugin 'jeffkreeftmeijer/vim-numbertoggle'
Plugin 'tpope/vim-rhubarb'
Bundle 'burnettk/vim-angular'
Bundle 'othree/javascript-libraries-syntax.vim'
Bundle 'leafgarland/typescript-vim'
Bundle 'scrooloose/nerdtree'
"Bundle "myusuf3/numbers.vim"

filetype on
syntax on
colorscheme wombat256mod
let mapleader=","

" Ag (search)
noremap <leader>s :Ag

" Move to the next buffer
nmap <leader>l :bnext<CR>
" Move to the previous buffer
nmap <leader>h :bprevious<CR>
" Show all open buffers and their status
nmap <leader>bl :ls<CR>
" Close buffer and move to previous one
nmap <leader>d :bprevious<CR>:bdelete #<CR>
" NERDTree toggle
nmap <leader>nt :NERDTreeToggle<CR>
" Numbers Toggle
"nmap <C-N><C-N> :set invnumber<CR>
nnoremap <F3> :set invnumber<CR>
"nnoremap <F4> :call NumberToggle()<CR>
let g:NumberToggleTrigger="<F4>"
"Paste toggle
set pastetoggle=<F2>

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:CommandTMaxFiles=20000
let g:CommandTMaxHeight=100
let g:CommandTMinHeight=6
let g:CommandTMatchWindowReverse=1
" Use letter 't' instead of actual ctrl-p
nmap <leader>t :CtrlP<cr>

"
" Use letter 'f' for toggle folding
"
nnoremap f za
nnoremap F zA
set foldmethod=indent
set foldlevel=4

"
" GIT Gutter
"
let g:gitgutter_sign_column_always=1
let g:gitgutter_realtime=1
highlight clear SignColumn
highlight GitGutterAdd ctermfg=green guifg=darkgreen
highlight GitGutterChange ctermfg=yellow guifg=darkyellow
highlight GitGutterDelete ctermfg=red guifg=darkred
highlight GitGutterChangeDelete ctermfg=yellow guifg=darkyellow

"Airline
let g:airline_powerline_fonts=1
let g:airline_section_x=""
let g:airline_section_y="%{strlen(&ft)?&ft:'none'}"
"let g:airline_theme='wombat'
" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1
" Show just the filename
" let g:airline#extensions#tabline#fnamemod = ':t'

" Splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

set laststatus=2
set number
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/node_modules/*,*/build/*,*/webroot/*,*.html
set autoindent
set expandtab
set tabstop=4
set softtabstop=2
set shiftwidth=2
set hlsearch
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup
let g:NERDTreeWinSize = 40

set tags=./.git/tags:~/workspace
"set mouse=a
"hi clear SignColumn
