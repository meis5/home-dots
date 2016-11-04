call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
" Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'valloric/youcompleteme'
Plug 'fatih/vim-go'

call plug#end()

" 基本设置


" nerdtree 设置
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode = 'l'

" lightline 配置

" airline 配置
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" vim go 配置
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

