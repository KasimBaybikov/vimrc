set nu
lang en_US

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
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <Space> pumvisible() ? "\<C-y> " : "\<Space>"
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<Tab>"

map <C-n> :NERDTreeToggle<CR>

vmap // <plug>NERDCommenterToggle
nmap // <plug>NERDCommenterToggle
