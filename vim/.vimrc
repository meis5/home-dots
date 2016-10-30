call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'

call plug#end()


" nerdtree 设置
map <C-n> :NERDTreeToggle<CR>
let NERDTreeMapActivateNode = 'l'
