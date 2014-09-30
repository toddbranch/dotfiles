set nocompatible                                    "be IMproved

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

Plugin 'desert256.vim'
Plugin 'kien/ctrlp.vim'

call vundle#end()

filetype plugin indent on

colorscheme desert256
"colorscheme default
syntax on                                           "set syntax highlighting

"set tabs to 2 spaces, do not expand
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

"visible whitespace
"set listchars=tab:>-,trail:~,extends:>,precedes:<
"set nolist

"fold settings
set nofoldenable
nmap <SPACE> za
set foldlevel=99

"relative numbering
"set rnu
set nu " this vim doesn't support RNU

"Makefile-specific configs
autocmd Filetype make setlocal noexpandtab
autocmd Filetype make setlocal nolist

"auto-source vimrc on save
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

"normal mode shortcuts

let mapleader=";"

nmap <leader>v :e $MYVIMRC<cr>
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr>
nmap <leader>b :ls<cr>
nmap <leader>e :Explore<cr>


nmap <Left> <<
nmap <Right> >>
nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <CR> o<esc>

imap <C-j> <esc>o
imap <C-k> <esc>O

nnoremap <silent> <leader>t :CommandT<CR>

set cursorline

scriptencoding utf-8
set encoding=utf-8

autocmd VimEnter * Explore

let g:netrw_liststyle=3

let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files']

let g:ctrlp_max_files=0
