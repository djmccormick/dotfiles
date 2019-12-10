# .vim

My personal vim configuration using [vim-plug](https://github.com/junegunn/vim-plug) and based on [vim-sensible](https://github.com/tpope/vim-sensible).

### Plugins

- [ack.vim](https://github.com/mileszs/ack.vim), run your favorite search tool from Vim, with an enhanced results list
- [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim), a full path fuzzy file, buffer, mru, tag, ... finder
- [jellybeans.vim](https://github.com/nanotech/jellybeans.vim), a colorful, dark color scheme
- [lightline-buffer](https://github.com/taohexxx/lightline-buffer), a buffer plugin for lightline.vim
- [lightline.vim](https://github.com/itchyny/lightline.vim), a light and configurable statusline/tabline
- [nerdcommenter](https://github.com/scrooloose/nerdcommenter), intensely orgasmic commenting
- [nerdtree](https://github.com/scrooloose/nerdtree), a tree explorer
- [vim-crystal](https://github.com/rhysd/vim-crystal), filetype and tools support for Crystal language
- [vim-fugitive](https://github.com/tpope/vim-fugitive), a Git wrapper so awesome, it should be illegal
- [vim-javascript](https://github.com/pangloss/vim-javascript), vastly improved Javascript indentation and syntax support
- [vim-jsx-pretty](https://github.com/maxmellon/vim-jsx-pretty), React JSX syntax pretty highlighting
- [vim-sensible](https://github.com/tpope/vim-sensible), defaults everyone can agree on
- [vim-sleuth](https://github.com/tpope/vim-sleuth), heuristically set buffer options
- [vim-speeddating](https://github.com/tpope/vim-speeddating), use CTRL-A/CTRL-X to increment dates, times, and more
- [vim-table-mode](https://github.com/dhruvasagar/vim-table-mode), automatic table creator and formatter
- [vim-tmux-navigator](https://github.com/christoomey/vim-tmux-navigator), seamless navigation between tmux panes and vim splits

### Installation

1. If you have your own `.vim/` or `.vimrc` then back them up to a new location.

1. Use git to clone this project:
   ```shell
   git clone git@github.com:djmccormick/.vim.git ~/Projects/.vim
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

If you have [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) (also known as `ag`) installed, it'll be used by [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) and [ack.vim](https://github.com/mileszs/ack.vim) for searches. It makes both work faster, so I recommend it.
