set nocompatible                                    "be IMproved

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'

"color schemes
Plugin 'desert256.vim'

"emmet - html and css
Plugin 'mattn/emmet-vim'

"snipmate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
" Plugin 'scrooloose/snipmate-snippets'
Plugin 'honza/vim-snippets'
Plugin 'mhinz/vim-startify'
"
"vim-fugitive - git integratin
"Plugin 'tpope/vim-fugitive'

"command-t file completion
"Plugin 'wincent/Command-T'

"markdown syntax highlighting
Plugin 'plasticboy/vim-markdown'

"vim hard mode
Plugin 'wikitopian/hardmode'

"javascript stuff
Plugin 'jelera/vim-javascript-syntax'
Plugin 'pangloss/vim-javascript'
Plugin 'nathanaelkane/vim-indent-guides'

" completion
Plugin 'Valloric/YouCompleteMe'

" haskell
"Plugin 'dag/vim2hs'

" NERDTree
Plugin 'scrooloose/nerdtree'

" unimpaired
Plugin 'tpope/vim-unimpaired'

" syntastic
Plugin 'scrooloose/syntastic'

Plugin 'kien/ctrlp.vim'

"All of my bundles

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
set listchars=tab:>-,trail:~,extends:>,precedes:<
set nolist

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
nmap <leader>v :e $MYVIMRC<cr>
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr>
nmap <leader>b :ls<cr>


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

"autocmd VimEnter * Explore

set hidden

let g:CommandTMaxFiles=50000

set noautochdir

let g:netrw_liststyle=3
