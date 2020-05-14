set nocompatible              " be iMproved, required
filetype off                  " required

syntax enable 

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     PLUGIN BOX                      "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Nerdtree provides file hierarchy while in vim
Plugin 'scrooloose/nerdtree.git'

" Colorschemes
Plugin 'jdkanani/vim-material-theme'
Plugin 'morhetz/gruvbox'

" Automatically pair '(', '{', '[', etc.
Plugin 'jiangmiao/auto-pairs'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                     END PLUGIN BOX                  "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
call vundle#end()            " required
filetype plugin indent on    " required

" ---------- GENERAL SETTINGS ------------- 
" Set tabs to spaces of 4 instead of 8 or CPP style guide
set expandtab
set shiftwidth=4
set tabstop=4
set scrolloff=5 " Leave 5 lines of buffer when scrolling
set sidescrolloff=10 " Leave 10 characters of horizontal buffer when scrolling
set autoread " Auto reload changed files
set autoindent " Use indentation of previous line
set smartindent " Use intelligent indentation for C
"set hlsearch " Highlight matching search results
set ignorecase smartcase " Search queries intelligently set case
set splitright " Open new splits to the right
set splitbelow " Open new splits to the bottom

" Open NERDTree automatically
" autocmd vimenter * NERDTree
" Close vim if NERDTree is only thing open
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" ---------- REBINDING ------------
let mapleader='-'
inoremap jj <Esc>
inoremap JJ <Esc>
" _ is beginning of line, + is end of line
noremap _ 0
noremap + $

" Scroll DOWN ONE LINE at a time 
nnoremap m <c-e>
" Scroll DOWN HALF PAGE at a time 
nnoremap <c-m> <c-d> 
" Scroll UP ONE LINE at a time 
nnoremap , <c-y>
" Scroll UP ONE PAGE at a time. Doesn't work for some reason.
"nnoremap <c-,> <c-u> 
" Use tg to go back a tab instead of gT
" This is to match up with moving forward a tab with gt
nnoremap tg gT
" Save file via ctrl-d, or if it's a new file, save as
command -nargs=0 -bar Update if &modified 
                           \|    if empty(bufname('%'))
                           \|        browse confirm write
                           \|    else
                           \|        confirm write
                           \|    endif
                           \|endif
nnoremap <silent> <C-S> :<C-u>Update<CR>
inoremap <c-s> <c-o>:Update<CR>

" Open .vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
" Source .vimrc ( To apply changes )
nnoremap <leader>sv :source $MYVIMRC<cr>
" Toggle NERDTree
nnoremap <leader>n :NERDTreeToggle<Enter>


" -------- COSMETIC  ------------- 
set background=dark
"colorscheme material-theme
colorscheme gruvbox

set number " Lines are numbered
autocmd filetype cpp set colorcolumn=81 "Greys out the 81st column for CPP files only

