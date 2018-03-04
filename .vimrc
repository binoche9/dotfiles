au BufNewFile,BufRead .bash_path call SetFileTypeSH("bash")
au BufNewFile,BufRead .bash_local call SetFileTypeSH("bash")
au BufNewFile,BufRead .bash_aliases call SetFileTypeSH("bash")

execute pathogen#infect()
execute pathogen#helptags()

filetype plugin on

if !exists("g:syntax_on")
	syntax enable
endif

set background=dark
let g:solarized_termcolors=256
let g:solarized_termtrans = 1
colorscheme solarized

highlight LineNr ctermfg=darkgray
highlight LineNr ctermbg=black

map <F2> :NERDTreeToggle<CR>
imap qw <Esc>
imap jk <Esc>

set rtp+=/Users/mjkim/go/src/github.com/golang/lint/misc/vim

set title titlestring=%f
set statusline=%<%F\ %h%m%r%y%=%-14.(%l,%c%V%)\ %P
set t_ts=]1;
set t_fs=
set laststatus=2

set tabstop=4
set shiftwidth=4
set expandtab
set ruler
set number
set smartindent
