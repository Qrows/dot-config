" neovim/vim config

"""""""""""""""""""""
"  Base Settings    " 
"""""""""""""""""""""
set termguicolors
set nocompatible
set number
set relativenumber
syntax on
filetype on
filetype plugin on
filetype indent on
set autoindent
set modeline
set cursorline
" set cursorcolumn

set smarttab
set shiftwidth=4
set tabstop=4
set softtabstop=4

set showmatch
set matchtime=0
set nobackup
set nowritebackup
set directory=~/.nvim/.swapfiles//

set conceallevel=2
"""""""""""""""""""""
"       Plugin      " 
"""""""""""""""""""""
call plug#begin()
" base16 support
Plug 'chriskempson/base16-vim'
" Vim airline 
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Auto Complete
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } 
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
Plug 'Shougo/neoinclude.vim'
" Snippet
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
" Vim Surround
Plug 'tpope/vim-surround'
" GOYO
Plug 'junegunn/goyo.vim'
" VimWiki
Plug 'vimwiki/vimwiki', { 'branch' : 'dev' } 
" i3wm syntax
Plug 'PotatoesMaster/i3-vim-syntax'
call plug#end()

"""""""""""""""""""""
"  Plugin Setting   " 
"""""""""""""""""""""
"
" base16 theme
colorscheme base16-gruvbox-dark-hard
"
" AutoComplete config
let g:deoplete#enable_at_startup = 1
set completeopt-=preview
let g:deoplete#sources#clang#libclang_path = '/usr/lib/libclang.so'
let g:deoplete#sources#clang#clang_header = '/usr/lib/clang'
"
" Ultisnippet config
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsEditSplit="vertical"
"
" vimwiki config
let g:vimwiki_list = [{ 'path': '~/Dropbox/vimwiki', 'syntax' : 'markdown'}]
"
" markdown config
let g:markdown_fenced_languages = ['html', 'python', 'bash=sh']
let g:markdown_syntax_conceal = 1
let g:markdown_minlines = 100
