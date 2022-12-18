""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Vim plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'scrooloose/nerdcommenter'
call plug#end()

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugin setting
""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable tab enhancement for vim-airline
let g:airline#extensions#tabline#enabled = 1

" Use <F6> to toggle NERDTree
map <F6> :NERDTreeToggle<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" General settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on
syntax on

" Don't be compatible with vi
set nocompatible

" Show line number
set number

" set increamental search
set incsearch

" highlight research
set hlsearch

" auto and smart indentation
set autoindent
set smartindent

" No backup file
set nobackup

" Enable wildmenu
set wildmenu

" Set the wildmenu mode to match with longest prefix and list
" the matched items
set wildmode=list:longest

" Enable mouse in vim
set mouse=a

" Don't have any error sound
set belloff=all

" Replace tabs with 4 spaces
set tabstop=4
set softtabstop=4
set expandtab

" Make shift aligns with tab
set shiftwidth=4

" Shorten tiemout when switch between different mode
set ttimeout ttimeoutlen=10

" Use bar cursor in normal mode and line cursor in insert mode
let &t_SI="\e[6 q"
let &t_EI="\e[2 q"

" Redefine map leader
let mapleader=','

""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Kep mappping
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" More easy to use windows
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Move for wrapped line
nnoremap j gj
nnoremap k gk

" Remove highlight
map <silent> <leader><cr> :noh<cr>

" Tab related
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove

" Move from insert to normal mode more easily
inoremap <leader><leader> <Esc>
inoremap <leader>w <C-O>:w<cr>
inoremap <leader>q <C-O>:q<cr>

" Autocomplete the braces
inoremap {<CR> {<CR>}<Esc>ko


""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd
""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatically save and load info about fold
autocmd BufWrite * mkview
autocmd BufWinLeave * mkview
autocmd BufRead * silent loadview

