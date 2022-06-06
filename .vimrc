set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'morhetz/gruvbox'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'
Plugin 'pangloss/vim-javascript'
"Plugin 'scrooloose/syntastic'
"Plugin 'vim-syntastic/syntastic'
Plugin 'tpope/vim-surround'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'dense-analysis/ale'
"Plugin 'nvie/vim-flake8'

call vundle#end()
filetype plugin indent on

syntax on
colorscheme gruvbox

set background=dark
set number
set tabstop=2
set shiftwidth=2
set smarttab
set expandtab
set smartindent

set hlsearch
set incsearch

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"code which replace %% sign in command line in vim for path to current
"directory
cnoremap <expr> %% getcmdtype() == ':' ? expand('%:h').'/' : '%%'

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

"mappings

map <C-n> :NERDTreeToggle<CR>

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

set guifont=Monaco:h13

"Show hidden files in NERD tree
let NERDTreeShowHidden=1
