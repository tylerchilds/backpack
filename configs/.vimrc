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

call plug#end()

" Set Tab Size to 4
set tabstop=4

" Turn on line numbers
set number

" More natural opening for splits
set splitbelow
set splitright

" Syntax On
syntax on

" Set theme
colorscheme gruvbox
set background=dark " Setting dark mode
