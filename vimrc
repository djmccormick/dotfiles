set nocompatible

" Load pathogen:
filetype off
call pathogen#infect()
filetype plugin indent on
syntax on

" Theme:
set background=dark
color jellybeans

" Four space tabbing:
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

" NERDTree
let g:NERDTreeWinSize = 35
let NERDTreeShowBookmarks=1
autocmd VimEnter * NERDTree ~/Websites/

" Mark trailing white space:
set list listchars=tab:›\ ,trail:·,eol:¬

" Set the backups to go to a single folder instead of all over the place:
set directory=~/.vim/swap
set backupdir=~/.vim/backup

" Basics:
set bs=2
set number
set nowrap
"set hlsearch
set incsearch
set ignorecase
set smartcase
set history=1000
set wildmenu
set shortmess=atI
let mapleader = ","

" From http://items.sjbach.com/319/configuring-vim-right
set hidden
nnoremap ' `
nnoremap ` '
set wildmode=list:longest,full

" Set space to toggle a fold
nnoremap <space> za

" Hide buffer when not in window (to prevent relogin with FTP edit)
set bufhidden=hide

" Have 3 lines of offset (or buffer) when scrolling
set scrolloff=5

" Set filetypes:
au BufNewFile,BufRead *.php set filetype=php
au BufNewFile,BufRead *.htm set filetype=php
au BufNewFile,BufRead *.html set filetype=php
au BufNewFile,BufRead *.inc set filetype=php
au BufNewFile,BufRead *.view set filetype=php
au BufNewFile,BufRead *.ejs set filetype=html
au BufNewFile,BufRead *.jade set filetype=html

" MiniBuffExplorer options:
let g:miniBufExplMapWindowNavVim = 1 
let g:miniBufExplMapWindowNavArrows = 1 
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplModSelTarget = 1 

" http://vim.wikia.com/wiki/Modeline_magic
" Append modeline after last line in buffer.
" Use substitute() instead of printf() to handle '%%s' modeline in LaTeX
" files.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d :",
        \ &tabstop, &shiftwidth, &textwidth)
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

" http://vim.wikia.com/wiki/Automatically_reload_files_with_mixed_line-endings_in_DOS_fileformat
" Automatically converts all dos line endings to unix line endings.
autocmd BufReadPost * nested
      \ if !exists('b:reload_dos') && !&binary && &ff=='unix' && (0 < search('\r$', 'nc')) |
      \   let b:reload_dos = 1 |
      \   e ++ff=dos |
      \ endif
