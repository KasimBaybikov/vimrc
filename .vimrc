set nu
set mouse=a
set autoindent
set nobackup
set noswapfile
set nowrap

set listchars=eol:¬,tab:>·,trail:~,extends:>,precedes:<
set list

inoremap [<CR> []<LEFT>
inoremap (<CR> ()<LEFT>
inoremap "<CR> ""<LEFT>
inoremap '<CR> ''<LEFT>
inoremap {<CR> <CR>{<CR>}<Esc>O
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

call plug#begin('~/.vim/plugged')

Plug 'preservim/nerdtree'
Plug 'tomasr/molokai'
Plug 'preservim/nerdcommenter'

Plug 'kyoz/purify', { 'rtp': 'vim' }

call plug#end()

let g:rehash256 = 1
map <C-n> :NERDTreeToggle<CR>

"colorscheme molokai
colorscheme purify
let g:purify_bold = 0        " default: 1
let g:purify_italic = 0      " default: 1
let g:purify_underline = 0   " default: 1
let g:purify_undercurl = 0   " default: 1
let g:purify_inverse = 0

vmap // <plug>NERDCommenterToggle
nmap // <plug>NERDCommenterToggle
