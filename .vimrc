" NeoBundle Scripts-----------------------------
if has('vim_starting')
  set nocompatible               " Be iMproved

  "Required
  set runtimepath+=/home/toddbranch/.vim/bundle/neobundle.vim/
endif

"Required
call neobundle#begin(expand('/home/toddbranch/.vim/bundle'))

" Let NeoBundle manage NeoBundle
"Required
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'kien/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'Shougo/vimproc.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'desert256.vim'
NeoBundle 'L9'
NeoBundle 'FuzzyFinder'
NeoBundle 'wincent/command-t'

" You can specify revision/branch/tag.
"NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

"Required
call neobundle#end()

"Required
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

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

"auto-source vimrc on save
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
endif

"normal mode shortcuts

let mapleader=";"

nmap <leader>r :e $MYVIMRC<cr>
nmap <leader>n :bn<cr>
nmap <leader>p :bp<cr>
nmap <leader>b :ls<cr>
nmap <leader>e :Explore<cr>
nmap <leader>v :vs<cr>
nmap <leader>s :sp<cr>


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

let g:netrw_liststyle=3

let g:CommandTMaxFiles=100000

let g:ctrlp_max_files=0

set wildignore+=*.swp,*/.git,*/node_modules
