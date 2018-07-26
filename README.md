# .vim

My personal vim configuration using [vim-plug](https://github.com/junegunn/vim-plug) and based on [vim-sensible](https://github.com/tpope/vim-sensible).

### Installation

1. If you have your own `.vim/` or `.vimrc` then back them up to a new location.

2. Use git to clone this project:

```shell
git clone git://github.com/djmccormick/.vim.git ~
```

3. Create `swap` and `undo` directories:

```shell
mkdir ~/.vim/swap ~/.vim/undo
```

3. Create a symlink for `.vim` and `.vimrc`:

```shell
ln -s ~/Projects/.vim/vimrc ~/.vimrc
```

4. Load all the plugins by opening vim, typing `:PlugInstall`, and then restarting vim.
