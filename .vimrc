" File: .vimrc
" Author: Aas Suhendar <aas.suhendar@dmail.com>
"
" How I configure Vim :P

" Use Vim settings, rather than Vi settings (much better!).
" Ths must be first, because it changes other options as a side effect.
set nocompatible

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Lean & mean status/tabline for vim that's light as air.
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'itchyny/lightline.vim'

" Vim Color Scheme
Plug 'gmoe/vim-espresso'
Plug 'gmoe/vim-eslint-syntax'

" Vim Surround
Plug 'tpope/vim-surround'

" Vim Visual Multi
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" Vim Better Whitespace
Plug 'ntpeters/vim-better-whitespace'

" Vim Git Gutter
Plug 'airblade/vim-gitgutter'

" Initialize plugin system
call plug#end()

" NerdTree Plugin Config
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" --- General settings ---
" allow backspacing over everything in insert mode
" set backspace=indent,eol,start
set ruler                 " show the cursor position all the time
set number                " line numbers
set showcmd               " display incomplete commands
set incsearch             " do incremental searching
set hlsearch
set wildmenu              " command completion on pressing <Tab>
set autowriteall
syntax enable             " syntax highlighting and fix fold on code
set clipboard=unnamed     " share clipboard with OSX
set mouse=a               " allow mouse on terminal

" Tab settings
set expandtab             " Expand tabs into spaces
set tabstop=4             " default to 4 spaces for a hard tab
set softtabstop=4         " default to 4 spaces for the soft tab
set shiftwidth=4          " for when <TAB> is pressed at the beginning of a line
filetype indent plugin on " activate filetype plugin

" Cursors
set cursorline
"set cursorcolumn

"keystroke that can be saved is good for your health :)
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-k>
nnoremap <C-L> <C-W><C-L>
map ; :
imap jj <Esc>
cmap kk <c-c>
vmap v <Esc>

" Airline Config
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1

" Color Schame Config
set t_Co=256
set background=dark
colorscheme espresso

" Better Whitespace Config
let g:better_whitespace_ctermcolor=40
let g:better_whitespace_enabled=1

" --- set leader key to space ---
let mapleader = " "

" ----- General Leader key binding ---
" quit by <space>q
nmap <silent> <leader>q :q<CR>

" force quit by <space>qq
nmap <silent> <leader>qq :q!<CR>

" save by <space>w
nmap <silent> <leader>w :w<CR>

" save and quit by <space>wq
nmap <silent> <leader>wq :wq<CR>
