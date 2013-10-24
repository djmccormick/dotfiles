set nocompatible

" Scroll around cursor line:
let &scrolloff=999-&scrolloff

" Load pathogen:
runtime bundle/vim-pathogen/autoload/pathogen.vim
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

" Mark trailing white space:
set list listchars=tab:›\ ,trail:·,eol:¬

" Set the backups/undos/swaps to go to centralized locations:
set directory=~/.vim/swap//
try
    set undodir=~/.vim/undo//
    set undofile
catch /Unknown option/
    " For versions of Vim prior to 7.3
endtry

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

" Allow the . to execute once for each line of a visual selection
vnoremap . :normal .<CR>

" NERDTree
let NERDTreeShowBookmarks=1
nmap <Leader>n :NERDTreeToggle<CR>

" JSHint
nmap <Leader>j :JSHint<CR>

" CtrlP
nmap <Leader>p :CtrlP<CR>

" Vim 7.3 and above supports the Mac OS X clipboard:
set clipboard=unnamed

" From http://items.sjbach.com/319/configuring-vim-right
set hidden
nnoremap ' `
nnoremap ` '
set wildmode=list:longest,full

" Set space to toggle a fold
nnoremap <space> za

" Hide buffer when not in window (to prevent relogin with FTP edit)
set bufhidden=hide

" Have 5 lines of offset (or buffer) when scrolling
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

" statusline
set statusline=%<\ %n:%f\ %m%r%y%=%(Line\ %l/%L:%c%V%)

" http://vim.wikia.com/wiki/Modeline_magic
" Append modeline after last line in buffer.
function! AppendModeline()
  let l:modeline = printf(" vim: set ts=%d sw=%d tw=%d :",
        \ &tabstop, &shiftwidth, &textwidth)
  let l:modeline = substitute(&commentstring, "%s", l:modeline, "")
  call append(line("$"), l:modeline)
endfunction
nnoremap <silent> <Leader>ml :call AppendModeline()<CR>

" Ctrl+P
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*,*/package/Package/*,*/dist/*

" Project-specific settings:
au BufEnter *Projects/FuelUX2/* call s:real_tab()

function! s:real_tab()
  " Two space tabbing:
  set noexpandtab
endfun

function! s:two_tab()
  " Two space tabbing:
  set expandtab
  set tabstop=4
  set softtabstop=4
  set shiftwidth=2
endfun

" Fix janky files
function! FixJanky()
  %s/\r//ge " Remove DOS line endings
  %s/\s\+$//e " Remove trailing whitespace
  retab " Fix mixed tabs and spaces
  call feedkeys("\<C-o>")
endfun
nnoremap <silent> <Leader>f :call FixJanky()<CR>

" Format XML:
function! DoPrettyXML()
  " save the filetype so we can restore it later
  let l:origft = &ft
  set ft=
  " delete the xml header if it exists. This will
  " permit us to surround the document with fake tags
  " without creating invalid xml.
  1s/<?xml .*?>//e
  " insert fake tags around the entire document.
  " This will permit us to pretty-format excerpts of
  " XML that may contain multiple top-level elements.
  0put ='<PrettyXML>'
  $put ='</PrettyXML>'
  silent %!xmllint --format -
  " xmllint will insert an <?xml?> header. it's easy enough to delete
  " if you don't want it.
  " delete the fake tags
  2d
  $d
  " restore the 'normal' indentation, which is one extra level
  " too deep due to the extra tags we wrapped around the document.
  silent %<
  " back to home
  1
  " restore the filetype
  exe "set ft=" . l:origft
endfunction
command! PrettyXML call DoPrettyXML()
nnoremap <silent> <Leader>x :call DoPrettyXML()<CR>
