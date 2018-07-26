# .vim

My personal vim configuration using [vim-plug](https://github.com/junegunn/vim-plug).

### Installation

1. If you have your own `.vim/` or `.vimrc` then back them up to a new location.

2. Use git to clone this project:

        $ git clone git://github.com/djmccormick/.vim.git ~/Projects

3. Create `swap` and `undo` directories:

        $ mkdir ~/Projects/.vim/swap
        $ mkdir ~/Projects/.vim/undo

3. Create a symlink for `.vim` and `.vimrc`:

        $ cd ~
        $ ln -s ~/Projects/.vim/vimrc .vimrc
        $ ln -s ~/Projects/.vim .vim

4. Load all the plugins by opening vim, typing `:PlugInstall`, and then restarting vim.
