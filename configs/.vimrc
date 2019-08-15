" Autoinstall vim-plug
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins
call plug#begin('~/.vim/plugged')

" Aesthetics
Plug 'morhetz/gruvbox' " Theme

" Search Helpers
Plug 'scrooloose/nerdtree' " Sidebar
Plug 'junegunn/fzf', { 'do': './install --bin' } " fuzzy finder
Plug 'junegunn/fzf.vim' " fuzzy finder vim extensions

" Coding Helpers
Plug 'w0rp/ale' " asynchronous lint engine
Plug 'tpope/vim-fugitive' " git wrapper

call plug#end()

" Set Tab Size to 4
set tabstop=4

" keep lines below or above cursor while scrolling
set scrolloff=8

" highlight the line where your cursor is
set cursorline

" show a line where you should wrap text
set colorcolumn=81

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

" Show “invisible” characters
set lcs=tab:▸\ ,trail:·,eol:¬,nbsp:_
set lcs=tab:\ \ ,trail:·,nbsp:_
set list

" Highlight searches
set hlsearch

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
