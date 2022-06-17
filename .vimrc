syntax on
set relativenumber 
set number 
set tabstop=4 
set shiftwidth=4 "> indent=4 spaces
set colorcolumn=80

" smart case-sensitive search
set ignorecase
set smartcase

"call plug#begin()
"discord vim playing status https://github.com/Stoozy/vimcord
"Plug 'Stoozy/vimcord'
"call plug#end()

call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
 Plug 'junegunn/seoul256.vim'
 Plug 'junegunn/vim-easy-align'

" Group dependencies, vim-snippets depends on ultisnips
 Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
 Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
 Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using git URL
 Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Plugin options
 Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
 Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': 'yes \| ./install' }

" Unmanaged plugin (manually installed and updated)
 Plug '~/my-prototype-plugin'

" make vim typescript like vs code
 Plug 'neoclide/coc.nvim', {'branch': 'release'}
 
" CoC extensions
 let g:coc_global_extensions = ['coc-tsserver']

call plug#end()


