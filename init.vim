call plug#begin('~/.config/nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'
Plug 'jremmen/vim-ripgrep'
Plug 'vim-utils/vim-man'
Plug 'mbbill/undotree'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree' |
            \ Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'jiangmiao/auto-pairs'
Plug 'puremourning/vimspector'
Plug 'szw/vim-maximizer'
Plug 'alvan/vim-closetag'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()

let mapleader = " "
let g:airline_theme='gruvbox'
syntax on
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark  

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
set undodir=~/.vim/undodir

set undofile
set hls
set incsearch
set colorcolumn=80 
highlight ColorColumn ctermbg=0 guibg=lightgrey
set formatoptions-=t

nnoremap <F4> :NERDTreeToggle<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>u :UndotreeShow<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>
nnoremap <leader>f :Files<CR>
nnoremap <leader>/ :Rg<Space>
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition):
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

