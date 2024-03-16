syntax on
set relativenumber 
set number 
set tabstop=4 
set shiftwidth=4 "> indent=4 spaces
set colorcolumn=80
set mouse=a
set background=dark

" smart case-sensitive search
set ignorecase
set smartcase

"call plug#begin()
"discord vim playing status https://github.com/Stoozy/vimcord
"Plug 'Stoozy/vimcord'
"call plug#end()

let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

" make vim typescript like vs code
" Plug 'neoclide/coc.nvim', {'branch': 'release'}
 
" CoC extensions
" let g:coc_global_extensions = ['coc-tsserver']

 " vim-go plugin
 Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

 " vim-tex
 Plug 'lervag/vimtex'


call plug#end()
