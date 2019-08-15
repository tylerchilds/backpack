" Autoinstall vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox' " Theme
Plug 'scrooloose/nerdtree' " Sidebar

Plug 'junegunn/fzf', { 'do': './install --bin' }
Plug 'junegunn/fzf.vim'

call plug#end()

" Set Tab Size to 4
set tabstop=4

" Turn on line numbers
set number

" Known Suffixes
set suffixesadd+=.js
set suffixesadd+=.jsx

" More natural opening for splits
set splitbelow
set splitright

" Syntax On
syntax on

" Set theme
colorscheme gruvbox
set background=dark " Setting dark mode

" Unix line endings
set fileformat=unix

" Tips from https://gist.github.com/csswizardry/9a33342dace4786a9fee35c73fa5deeb

" Wild Menu / Fuzzy Matching
set wildmenu
set wildignore+=*.bmp,*.gif,*.ico,*.jpg,*.png,*.ico
set wildignore+=*.pdf,*.psd
set wildignore+=.git/*,node_modules/*,generated/*

" `gf` opens file under cursor in a new vertical split
nnoremap gf :vertical wincmd f<CR>

" Set the working directory to wherever the open file lives
" set autochdir

" Finish tips
