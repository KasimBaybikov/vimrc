set nu
lang en_US

set noswapfile
set nowrap

set tabstop=4
set shiftwidth=4
set scrolloff=7

"видимые табы и пробелы
set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list


"быстрое перемещение между окнами
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

inoremap {<CR> <CR>{<CR>}<Esc>O

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'kyoz/purify', { 'rtp': 'vim' }

call plug#end()

"тема
colorscheme purify

"Coc
"{"clangd.path": "/Users/rvernon/.config/coc/extensions/coc-clangd-data/install/12.0.0/clangd_12.0.0/bin/clangd"} in /Users/rvernon/.config/nvim/coc-settings.json (CocConfig)
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Space> pumvisible() ? "\<C-y> " : "\<Space>"
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"

map <C-n> :NERDTreeToggle<CR>

vmap // <plug>NERDCommenterToggle
nmap // <plug>NERDCommenterToggle

noremap <F12> :bo :tabnew<CR>:terminal<CR>i
tnoremap <ESC> <C-\><C-n>
nmap <C-x> <C-w>x

augroup go
    autocmd!
    autocmd FileType go inoremap {<CR> <space>{<CR>}<Esc>O
augroup END

"noremap zf <S-v>}zf
