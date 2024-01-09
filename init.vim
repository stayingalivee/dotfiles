call plug#begin('~/.config/nvim/plugged')

Plug 'ellisonleao/gruvbox.nvim'
Plug 'tpope/vim-fugitive'
Plug 'jremmen/vim-ripgrep'
Plug 'mbbill/undotree'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'mfussenegger/nvim-dap'
Plug 'szw/vim-maximizer'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}


call plug#end()

let mapleader = " "

set termguicolors
set background=dark
colorscheme gruvbox

let NERDTreeShowHidden=1



set nu 
set relativenumber
set mouse=a "hey I can see you judging
set splitbelow 
set nowrap
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set backspace=indent,eol,start
set smartindent
set noswapfile
"set undodir=~/.config/nvim/undodir
"set undofile
set hls
set incsearch
set ignorecase
set colorcolumn=120

highlight ColorColumn ctermbg=0 guibg=lightgrey
set formatoptions-=t

nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <leader>\ <C-w>v

map <C-h> :tabr<cr>
map <C-l> :tabl<cr>

"TODO check this shit
"nnoremap <leader>- <C-w>s
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>/ :Rg<Space>

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition):
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
