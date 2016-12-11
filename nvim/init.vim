call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-fugitive'
Plug 'fatih/vim-go'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim'
Plug 'Shougo/unite.vim'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'airblade/vim-gitgutter'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdcommenter'
Plug 'dyng/ctrlsf.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'bufexplorer.zip'
Plug 'scrooloose/syntastic'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'mattn/emmet-vim'
Plug 'mtscout6/syntastic-local-eslint.vim'

Plug 'tpope/vim-unimpaired'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-sensible'
Plug 'groenewege/vim-less'
Plug 'elzr/vim-json'
Plug 'plasticboy/vim-markdown'
Plug 'mxw/vim-jsx'
Plug 'othree/html5.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'bronson/vim-trailing-whitespace'
Plug 'leafgarland/typescript-vim'
Plug 'cakebaker/scss-syntax.vim'
Plug 'jiangmiao/auto-pairs'

call plug#end()
" ==========================================================
" ======================= 基本设置 =========================
" ==========================================================
" 设置无 bell 铃声
set noerrorbells visualbell t_vb=
if has('autocmd')
  autocmd GUIEnter * set visualbell t_vb=
endif

let mapleader = "\<Space>" " 前缀键 设置为空格
set laststatus=2
set ruler
set number
set cursorline
set hlsearch
set nowrap

syntax enable
syntax on

filetype on
filetype plugin on
filetype indent on
filetype plugin indent on

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" 主题
set guifont=DroidSansMonoForPowerlineNerdFont\ 30
set background=light
colorscheme bclear

:hi CursorLine   cterm=NONE ctermbg=255
" :hi CursorLine   cterm=NONE ctermbg=255 ctermfg=white guibg=darkred guifg=white
" :hi CursorColumn cterm=NONE ctermbg=255 ctermfg=white guibg=darkred guifg=white
:set cursorline
" :set cursorcolumn
"
"
" Highlight current line
" au WinLeave * set nocursorline nocursorcolumn
" au WinEnter * set cursorline cursorcolumn
" set cursorline cursorcolumn

set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" ==========================================================
" ====================== 常用快键 ==========================
" ==========================================================
imap jj <Esc>

" imap <Leader>s <Esc>:w<CR> " 保存
nnoremap <Leader>ww :w<CR> " 保存
nnoremap <Leader>qq :q<CR> " 退出
nnoremap <Leader>wa :wa<CR> " 保存所有
nnoremap <Leader>qa :qa<CR> " 退出所有

map <Leader>wj <C-w>j " 下定位窗格
map <Leader>wk <C-w>k " 上定位窗格
map <Leader>wh <C-w>h " 左定位窗格
map <Leader>wl <C-w>l " 右定位窗格

nmap <Leader>w= :resize +3<CR> " 增大窗格
nmap <Leader>w- :resize -3<CR> " 增大窗格
nmap <Leader>w. :vertical resize +3<CR> " 增大窗格
nmap <Leader>w, :vertical resize -3<CR> " 增大窗格

nmap <Leader>wr <C-w>r " 循环充值窗口位置
nmap <Leader>wx <C-w>r " 和下一个窗口交换位置

function! MarkWindowSwap()
  " marked window number
  let g:markedWinNum = winnr()
  let g:markedBufNum = bufnr("%")
endfunction

function! DoWindowSwap()
  let curWinNum = winnr()
  let curBufNum = bufnr("%")
  " Switch focus to marked window
  exe g:markedWinNum . "wincmd w"
  " Load current buffer on marked window
  " Switch focus to current window
  exe curWinNum . "wincmd w"
  " Load marked buffer on current window
  exe 'hide buf' g:markedBufNum
endfunction

nnoremap <Leader>H :call MarkWindowSwap()<CR> <C-w>h :call DoWindowSwap()<CR>
nnoremap <Leader>J :call MarkWindowSwap()<CR> <C-w>j :call DoWindowSwap()<CR>
nnoremap <Leader>K :call MarkWindowSwap()<CR> <C-w>k :call DoWindowSwap()<CR>
nnoremap <Leader>L :call MarkWindowSwap()<CR> <C-w>l :call DoWindowSwap()<CR>

" buffer
map <Leader>bj :bprev<CR>
map <Leader>bk :bnext<CR>
map <Leader>bd :bd<CR>
map <Leader>bf :b

set splitbelow
set splitright

" ==========================================================
" ======================== 插件配置 ========================
" ==========================================================
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
set wildignore+=*/tmp/*,*/node_modules/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" set foldmethod=syntax
set foldmethod=indent
set nofoldenable " za 开关 zM 关闭所有 zR 打开所有

let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

" indentaion guide
" let g:indent_guides_enable_on_vim_startup=1
let g:indent_guides_start_level=2
let g:indent_guides_guide_size=1
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
"
" 设置左边行号的前景和背景
" highlight LineNr ctermfg=Blue ctermbg=black
"

" emmet 设置
let g:user_emmet_leader_key='<C-y>'
let g:user_emmet_install_global = 0
autocmd FileType html,js,jsx,javascript,javascript.jsx,css,scss,less EmmetInstall
imap <Leader><tab> <C-y>,

" imap   <C-y>,   <plug>(emmet-expand-abbr)
" imap   <C-y>;   <plug>(emmet-expand-word)
" imap   <C-y>u   <plug>(emmet-update-tag)
" imap   <C-y>d   <plug>(emmet-balance-tag-inward)
" imap   <C-y>D   <plug>(emmet-balance-tag-outward)
" imap   <C-y>n   <plug>(emmet-move-next)
" imap   <C-y>N   <plug>(emmet-move-prev)
" imap   <C-y>i   <plug>(emmet-image-size)
" imap   <C-y>/   <plug>(emmet-toggle-comment)
" imap   <C-y>j   <plug>(emmet-split-join-tag)
" imap   <C-y>k   <plug>(emmet-remove-tag)
" imap   <C-y>a   <plug>(emmet-anchorize-url)
" imap   <C-y>A   <plug>(emmet-anchorize-summary)
" imap   <C-y>m   <plug>(emmet-merge-lines)
" imap   <C-y>c   <plug>(emmet-code-pretty)

" autocmd FileType css imap <tab> <plug>(emmet-expand-abbr)

" autocmd FileType html,js,jsx,javascript.jsx,css,scss,less imap <tab> <C-y>,
"

let g:user_emmet_settings = {
  \ 'js' : {
  \   'extends' : 'html',
  \ },
  \ 'jsx' : {
  \   'extends' : 'html',
  \ },
  \ }
" nerdtree 设置
map <leader>ft :NERDTreeToggle<CR>
let NERDTreeMapActivateNode = 'l'
let g:NERDTreeIndicatorMapCustom = {
  \ "Modified"  : "✹",
  \ "Staged"    : "✚",
  \ "Untracked" : "✭",
  \ "Renamed"   : "➜",
  \ "Unmerged"  : "═",
  \ "Deleted"   : "✖",
  \ "Dirty"     : "✗",
  \ "Clean"     : "✔︎",
  \ "Unknown"   : "?"
  \ }

" airline 配置
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'

" Use deoplete.
let g:deoplete#enable_at_startup = 1
set completeopt+=noinsert

let g:EditorConfig_exclude_patterns = ['fugitive://.*']

" Shell 模式配置
map <Leader>tt :terminal<CR>
tnoremap jj <C-\><C-n>
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

let g:tern_request_timeout = 1
let g:tern_show_signature_in_pum = '0'

" Githutter 配置
map <C-g> :GitGutterLineHighlightsToggle<CR>
let g:gitgutter_sign_column_always = 1
let g:gitgutter_max_signs = 500  " default value
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk

" 注释
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1
let g:NERDDefaultAlign = 'left'

nmap     <C-F>f <Plug>CtrlSFPrompt
vmap     <C-F>f <Plug>CtrlSFVwordPath
vmap     <C-F>F <Plug>CtrlSFVwordExec
nmap     <C-F>n <Plug>CtrlSFCwordPath
nmap     <C-F>p <Plug>CtrlSFPwordPath
nnoremap <C-F>o :CtrlSFOpen<CR>
nnoremap <C-F>t :CtrlSFToggle<CR>
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>
nmap     <C-F>l <Plug>CtrlSFQuickfixPrompt
vmap     <C-F>l <Plug>CtrlSFQuickfixVwordPath
vmap     <C-F>L <Plug>CtrlSFQuickfixVwordExec

let g:multi_cursor_next_key='<C-n>'
let g:multi_cursor_prev_key='<C-p>'
let g:multi_cursor_skip_key='<C-x>'
let g:multi_cursor_quit_key='<Esc>'


let g:unite_source_menu_menus = get(g:,'unite_source_menu_menus',{})
let g:unite_source_menu_menus.git = {
  \ 'description' : '          gestionar repositorios git
  \                            ⌘ [espacio]g',
  \}
let g:unite_source_menu_menus.git.command_candidates = [
  \['▷ tig                                                        ⌘ ,gt',
    \'normal ,gt'],
  \['▷ git status       (Fugitive)                                ⌘ ,gs',
    \'Gstatus'],
  \['▷ git diff         (Fugitive)                                ⌘ ,gd',
    \'Gdiff'],
  \['▷ git commit       (Fugitive)                                ⌘ ,gc',
    \'Gcommit'],
  \['▷ git log          (Fugitive)                                ⌘ ,gl',
    \'exe "silent Glog | Unite quickfix"'],
  \['▷ git blame        (Fugitive)                                ⌘ ,gb',
    \'Gblame'],
  \['▷ git stage        (Fugitive)                                ⌘ ,gw',
    \'Gwrite'],
  \['▷ git checkout     (Fugitive)                                ⌘ ,go',
    \'Gread'],
  \['▷ git rm           (Fugitive)                                ⌘ ,gr',
    \'Gremove'],
  \['▷ git mv           (Fugitive)                                ⌘ ,gm',
    \'exe "Gmove " input("destino: ")'],
  \['▷ git push         (Fugitive, salida por buffer)             ⌘ ,gp',
    \'Git! push'],
  \['▷ git pull         (Fugitive, salida por buffer)             ⌘ ,gP',
    \'Git! pull'],
  \['▷ git prompt       (Fugitive, salida por buffer)             ⌘ ,gi',
    \'exe "Git! " input("comando git: ")'],
  \['▷ git cd           (Fugitive)',
    \'Gcd'],
  \]
nnoremap <silent>[menu]g :Unite -silent -start-insert menu:git<CR>

let g:syntastic_javascript_checkers = ['eslint']

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']

" let g:syntastic_error_symbol = '❌'
" let g:syntastic_style_error_symbol = '⁉️'
" let g:syntastic_warning_symbol = '⚠️'
" let g:syntastic_style_warning_symbol = '💩'

let g:syntastic_error_symbol = 'x'
let g:syntastic_style_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'
let g:syntastic_style_warning_symbol = '!'

highlight link SyntasticErrorSign SignColumn
highlight link SyntasticWarningSign SignColumn
highlight link SyntasticStyleErrorSign SignColumn
highlight link SyntasticStyleWarningSign SignColumn


