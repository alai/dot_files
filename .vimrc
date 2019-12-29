" Wrap Linebreak and Nolist
set wrap linebreak nolist

" Set highlight search
set hlsearch

" Set leaderkey
let mapleader = "\\"

" Set Tab act as teh Bash's completion
set wildmode=longest:full,full

" Scheme and color
set termguicolors
colorscheme "PapayaWhip"

" For MacVim
:set guifont=Menlo\ Regular:h16
let macvim_skip_colorscheme=1

" -----------
" + Plugin +
" -----------
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" :source $MYVIMRC 
" for update rice file without existing 
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/dictionary.vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install' }

" Colorschemes I like
Plug 'nightsense/stellarized'
Plug 'fenetikm/falcon'
Plug 'nightsense/snow'
Plug 'flazz/vim-colorschemes'

" WriteRoom mode of vim
Plug 'junegunn/goyo.vim'

" Snippet
Plug 'SirVer/ultisnips'

" Initialize plugin system
call plug#end()

 
" ---------------
" + For Plugins +
" ---------------

" - Markdown Preview -
" For active markdown filetype and preview
" set shell=bash\ -i 
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
filetype plugin on

" - Ultisnips - 
" Trigger configuration.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetDirectories=["mysnippets"]
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"


" ----------------------
" + Mapping shortcuts +
" ----------------------
" /E : Enter writeroom mode
" /W : Set font, word wrap, line break, and linespace for better display
" /m : Markdown preview
" oo : Add a new blank line under

" - Leader Keys
map <leader>E :Goyo<CR>:colorscheme seoul256-light<CR>:set wrap<CR>:set linebreak<CR>:set spell<CR>:set linespace=10<CR>:set guifont=Menlo\ Regular:h20<CR>
map <leader>W :Goyo<CR>:set wrap<CR>:set linebreak<CR>:set linespace=10<CR>:set guifont=Menlo\ Regular:h20<CR>
map <leader>m :MarkdownPreview<CR>

" - My habits
nmap oo o<Esc>k
