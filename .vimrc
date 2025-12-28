" Vim configuration for Kevin's Vim setup

" Bootstrap vim-plug if not installed
if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
      https://raw.githubusercontent.com/junegunn/vim-plug/master/autoload/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Initialize plugin system
call plug#begin('~/.vim/plugged')

" Plugin list
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'vim-airline/vim-airline'
Plug 'morhetz/gruvbox'
Plug 'fatih/vim-go'
Plug 'ziglang/zig.vim'

call plug#end()

" Basic settings
syntax on
filetype plugin indent on
colorscheme gruvbox
set number relativenumber

" Indentation
set tabstop=4 shiftwidth=4 expandtab smartindent

" Search behavior
set incsearch ignorecase smartcase

" Disable swap and backup files
set noswapfile nobackup nowritebackup undofile

" Airline theme
let g:airline_theme = 'gruvbox'

" NERDTree toggle
nnoremap <C-n> :NERDTreeToggle<CR>

" Easy window navigation
nnoremap <C-w>h <C-w>h
nnoremap <C-w>j <C-w>j
nnoremap <C-w>k <C-w>k
nnoremap <C-w>l <C-w>l
