# .vim

My personal vim configuration using [vim-plug](https://github.com/junegunn/vim-plug) and based on [vim-sensible](https://github.com/tpope/vim-sensible).

### Plugins

- [ctrlp.vim](ctrlpvim/ctrlp.vim), a full path fuzzy file, buffer, mru, tag, ... finder
- [lightline.vim](itchyny/lightline.vim), a light and configurable statusline/tabline
- [vim-jsx-pretty](maxmellon/vim-jsx-pretty), React JSX syntax pretty highlighting
- [ack.vim](mileszs/ack.vim), run your favorite search tool from Vim, with an enhanced results list
- [jellybeans.vim](nanotech/jellybeans.vim), a colorful, dark color scheme
- [vim-javascript](pangloss/vim-javascript), vastly improved Javascript indentation and syntax support
- [nerdcommenter](scrooloose/nerdcommenter), intensely orgasmic commenting
- [nerdtree](scrooloose/nerdtree), a tree explorer
- [lightline-buffer](taohexxx/lightline-buffer), a buffer plugin for lightline.vim
- [vim-sensible](tpope/vim-sensible), defaults everyone can agree on
- [vim-sleuth](tpope/vim-sleuth), heuristically set buffer options

### Installation

1. If you have your own `.vim/` or `.vimrc` then back them up to a new location.

1. Use git to clone this project:
   ```shell
   git clone git://github.com/djmccormick/.vim.git ~/Projects/.vim
   ```

1. Create a symlinks for `.vim` and `.vimrc`:
   ```shell
   ln -s ~/Projects/.vim ~/.vim
   ln -s ~/Projects/.vim/.vimrc ~/.vimrc
   ```

1. Create `swap` and `undo` directories:
   ```shell
   mkdir ~/.vim/swap ~/.vim/undo
   ```

1. Load up vim, which should automatically download `vim-plug`. You may see some errors since plugins haven't yet been installed. Once vim is going, install all the plugins by typing `:PlugInstall`, and then restart vim.

### Additional setup

If you have [The Silver Searcher](ggreer/the_silver_searcher) (also known as `ag`) installed, it'll be used by Ctrl+P and ack.vim for searches. It makes both work faster, so I recommend it.
