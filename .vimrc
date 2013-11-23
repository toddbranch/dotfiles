set nocompatible                                    "be IMproved

filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'

"color schemes
Bundle 'desert256.vim'

"emmet - html and css
Bundle "mattn/emmet-vim"

"snipmate
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "honza/snipmate-snippets"
Bundle "garbas/vim-snipmate"
Bundle "mhinz/vim-startify"

"vim-fugitive - git integratin
Bundle "tpope/vim-fugitive"

"command-t file completion
Bundle "wincent/Command-T"

"markdown syntax highlighting
Bundle "plasticboy/vim-markdown"

"vim hard mode
Bundle "wikitopian/hardmode"

"javascript stuff
Bundle "jelera/vim-javascript-syntax"
Bundle "pangloss/vim-javascript"
Bundle "nathanaelkane/vim-indent-guides"

" completion
" Bundle Valloric/YouCompleteMe -- need to recompile for this

"All of my bundles

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
set rnu

"Makefile-specific configs
autocmd Filetype make setlocal noexpandtab
autocmd Filetype make setlocal nolist

"auto-source vimrc on save
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

"normal mode shortcuts
nmap <leader>v :tabedit $MYVIMRC<cr>
nmap <leader>l :setlocal number!<cr>
nmap <leader>r :setlocal rnu!<cr>
nmap <leader>p :set paste!<cr>
nmap <leader>x :x<cr>
nmap <leader>n :tabnew<cr>

nmap <Left> <<
nmap <Right> >>
nmap <Up> <Nop>
nmap <Down> <Nop>
nmap <CR> o<esc>

imap <C-j> <esc>o
imap <C-k> <esc>O

nnoremap <silent> <leader>t :CommandT<CR>

set cursorline

set path+=/usr/msp430/include/
