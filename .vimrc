scriptencoding utf-8
set encoding=utf-8

execute pathogen#infect()
execute pathogen#helptags()

filetype plugin on
filetype indent on

" Enable syntax highlighting for these bash files
if !exists("g:syntax_on")
	syntax enable
endif

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized

" Reload file if changed when changing buffers
au FocusGained,BufEnter * :checktime

" Update file when updated from outside
set autoread

highlight LineNr ctermfg=darkgray
highlight LineNr ctermbg=none

map <F2> :NERDTreeToggle<CR>
imap qw <Esc>
imap jk <Esc>

set rtp+=/Users/mjkim/go/src/github.com/golang/lint/misc/vim

set title titlestring=%f
set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P
" CTRL+V <Esc>
set t_ts=]1;
" CTRL+V CTRL+G
set t_fs=
set laststatus=2

" Show spaces on screen
hi SpecialKey ctermbg=None guibg=None
hi SpecialKey ctermfg=darkgray guifg=darkgray
" Use multiplication dot U+22C5
set listchars=tab:\|\ ,trail:⋅
set list

" Show line numbers
hi LineNr ctermbg=None gui=None
set number

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set ruler
set smartindent

au FileType javascript setlocal shiftwidth=2 softtabstop=2 tabstop=2
