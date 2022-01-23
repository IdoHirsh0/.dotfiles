" --- General 

set tabstop=4 
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set number
set numberwidth=4
set relativenumber
set signcolumn=number
set noswapfile
set backupdir=/tmp//
set undodir=~/.config/nvim/undodir
set undofile
set incsearch
set nohlsearch
set ignorecase
set smartcase
set nowrap
set splitbelow
set splitright
set hidden
set scrolloff=8
set noshowmode
set updatetime=250 
set encoding=UTF-8
set mouse=a


" --- Plugins

call plug#begin('~/.config/nvim/plugged')

" LSP
Plug 'neovim/nvim-lspconfig'
" Autocomplition
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'L3MON4D3/LuaSnip'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'onsails/lspkind-nvim'
" Treesitter
Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
" NerdTree
Plug 'preservim/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'ryanoasis/vim-devicons'
" Telescope
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make' }
" Show git changes in file
Plug 'airblade/vim-gitgutter'
" Colorscheme
Plug 'sainnhe/gruvbox-material'
Plug 'morhetz/gruvbox'
" Status bar
Plug 'vim-airline/vim-airline'
" For Commenting gcc & gc
Plug 'tpope/vim-commentary'
" CTRL + N for multiple cursors
Plug 'terryma/vim-multiple-cursors' 
" Show indented lines
Plug 'Yggdroot/indentLine'
" Vim game
Plug 'ThePrimeagen/vim-be-good'
" Auto bracket pairing
" Plug 'jiangmiao/auto-pairs'
Plug '9mm/vim-closer'
" Cheat sheet
Plug 'dbeniamine/cheat.sh-vim'

call plug#end()

" Require plugins configurations
lua require('IdoHirsh0')


" --- Colors

set background=dark
set termguicolors
colorscheme gruvbox
" colorscheme gruvbox-material


" --- Remaps

let mapleader = ' '

" - General

" Change Esc key
imap jk <Esc><Esc><Esc>
vmap jk <Esc><Esc><Esc>
cmap jk <Esc><Esc><Esc>

" Save & quit
noremap <leader>w :w<Cr>
noremap <leader>q :q<Cr>
noremap <C-s> :w<Cr>
noremap <C-a> ggVG

" Create splits
nmap <leader>sj <C-w>s
nmap <leader>sl <C-w>v

" Navigate between splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Resize splits
noremap <leader>rh :vertical resize +5<Cr>
noremap <leader>rl :vertical resize -5<Cr>
noremap <leader>rk :resize +5<Cr>
noremap <leader>rj :resize -5<Cr>

" Move text
nnoremap <S-j> :m .+1<Cr>==
nnoremap <S-k> :m .-2<Cr>==
vnoremap <A-j> :m '>+1<Cr>gv=gv
vnoremap <A-k> :m '<-2<Cr>gv=gv

" Make Y behave like C, D ...
nnoremap Y y$

" Undo break points
inoremap , ,<c-g>u
inoremap . .<c-g>u
inoremap ; ;<c-g>u
inoremap : :<c-g>u
inoremap ( (<c-g>u
inoremap ) )<c-g>u
inoremap { {<c-g>u
inoremap } }<c-g>u
inoremap [ [<c-g>u
inoremap ] ]<c-g>u
inoremap ! !<c-g>u
inoremap ? ?<c-g>u

" Code formatting
nnoremap <leader>ff :lua vim.lsp.buf.formatting({})<Cr>
nnoremap <leader>fm :%s//<Cr>

" - Telescope
nnoremap <leader>tp :Telescope find_files<Cr>
nnoremap <leader>tl :Telescope live_grep<Cr>

" - NerdTree
nnoremap <leader>nt :NERDTreeToggle<Cr>
let g:NERDTreeGitStatusWithFlags = 1

