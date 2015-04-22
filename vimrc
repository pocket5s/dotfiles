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
Plugin 'rking/ag.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'ack.vim'
Bundle "myusuf3/numbers.vim"

filetype on
syntax on
let mapleader=","

" Ack
noremap <leader>s :Ack
map <F4> :execute "Ack -w --type=" . &filetype . " " . expand("<cword>")<Bar> cw<CR>

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
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>
"Paste toggle
set pastetoggle=<F2>

set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:CommandTMaxFiles=5000
let g:CommandTMaxHeight=50
let g:CommandTMinHeight=6
let g:CommandTMatchWindowReverse=1
" Use letter 't' instead of actual ctrl-p
nmap <leader>t :CtrlP<cr>

"
" Use letter 'f' for toggle folding
"
nnoremap f za
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
let g:airline_theme='wombat'
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
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*.class,*/node_modules/*
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
"hi clear SignColumn

