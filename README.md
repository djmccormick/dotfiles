# .vim

My person vim configuration.

## Getting Started

1. If you have your own .vim/ or .vimrc then back them up to a new location.

2. Use git to clone this project.

        $ git clone git://github.com/djmccormick/.vim.git

3. Create our centralized swap and backup directories:

        $ mkdir .vim/backup
        $ mkdir .vim/swap

4. Create a symlink for .vimrc.

        $ ln -s .vim/vimrc .vimrc

5. Load all submodules (vimscripts).

        $ cd .vim
        $ git submodule init
        $ git submodule update
