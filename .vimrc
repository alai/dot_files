set wrap linebreak nolist
set hlsearch
let mapleader = "\\"
set termguicolors
" colorscheme "dark-ruby"

" For active markdown filetype and preview
" set shell=bash\ -i 
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
filetype plugin on


if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/dictionary.vim'



" Colorschemes I like
Plug 'nightsense/stellarized'
Plug 'fenetikm/falcon'
Plug 'nightsense/snow'
Plug 'flazz/vim-colorschemes'


" Vim Makrdown file preview
Plug 'suan/vim-instant-markdown'
Plug 'tpope/vim-markdown'

" WriteRoom mode of vim
Plug 'junegunn/goyo.vim'

" Initialize plugin system
call plug#end()

" Mapping shortcuts
map <leader>E :Goyo<CR>:colorscheme seoul256-light<CR>:set wrap<CR>:set linebreak<CR>:set spell<CR>:set linespace=10<CR>:set guifont=Menlo\ Regular:h20<CR>
map <leader>W :Goyo<CR>:set wrap<CR>:set linebreak<CR>:set linespace=10<CR>:set guifont=Menlo\ Regular:h20<CR>
nmap oo o<Esc>k
