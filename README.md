# .vim

My personal vim configuration using [vim-plug](https://github.com/junegunn/vim-plug) and based on [vim-sensible](https://github.com/tpope/vim-sensible).

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

1. Load up vim, which should automatically download `vim-plug`. Once loaded, install all the plugins by typing `:PlugInstall`, and then restart vim.
