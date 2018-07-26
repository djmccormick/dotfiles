set nocompatible

" Plugins
call plug#begin('~/.vim/plugged')
Plug 'ctrlpvim/ctrlp.vim'
Plug 'itchyny/lightline.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'nanotech/jellybeans.vim'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'taohex/lightline-buffer'
Plug 'tpope/vim-sensible'
call plug#end()

" Files
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set undofile

" Behavior
let mapleader = ","
set bs=2
set clipboard=unnamed
set hidden
set ignorecase
set nowrap
set number
set scrolloff=5
set smartcase

" Indentation
set tabstop=4
set shiftwidth=4
set smartindent
set noexpandtab

" Visual
set list listchars=tab:›\ ,trail:·,eol:¬
set termguicolors
set background=dark
color jellybeans


"
" Plugins
"

" NERDTree
let g:NERDTreeChDirMode=2
let NERDTreeShowBookmarks=1
nmap <Leader>n :NERDTreeToggle<CR>

" Ctrl+P
let g:ctrlp_working_path_mode='rw'
let g:ctrlp_custom_ignore = {
	\ 'dir':  '\v[\/](node_modules|dist|build|.next)$'
\ }

" Lightline
set noshowmode
set laststatus=2
let g:lightline = {
	\ 'colorscheme': 'jellybeans',
\ }

" Lightline Buffer
set showtabline=2
let g:lightline = {
    \ 'tabline': {
    \   'left': [ [ 'bufferinfo' ],
    \             [ 'separator' ],
    \             [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
    \   'right': [ [ 'close' ], ],
    \ },
    \ 'component_expand': {
    \   'buffercurrent': 'lightline#buffer#buffercurrent',
    \   'bufferbefore': 'lightline#buffer#bufferbefore',
    \   'bufferafter': 'lightline#buffer#bufferafter',
    \ },
    \ 'component_type': {
    \   'buffercurrent': 'tabsel',
    \   'bufferbefore': 'raw',
    \   'bufferafter': 'raw',
    \ },
    \ 'component_function': {
    \   'bufferinfo': 'lightline#buffer#bufferinfo',
    \ },
    \ 'component': {
    \   'separator': '',
    \ },
    \ }
let g:lightline_buffer_logo = ''
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = ''
let g:lightline_buffer_active_buffer_right_icon = ''
let g:lightline_buffer_separator_icon = '  '
let g:lightline_buffer_show_bufnr = 1
let g:lightline_buffer_rotate = 0
let g:lightline_buffer_fname_mod = ':t'
let g:lightline_buffer_excludes = ['vimfiler']
let g:lightline_buffer_maxflen = 30
let g:lightline_buffer_maxfextlen = 3
let g:lightline_buffer_minflen = 16
let g:lightline_buffer_minfextlen = 3
let g:lightline_buffer_reservelen = 20

" vim-jsx
let g:vim_jsx_pretty_colorful_config=1
