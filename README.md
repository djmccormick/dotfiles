# dotfiles

My personal `*`nix configuration files using [dotbot](https://github.com/anishathalye/dotbot) and based on [dotfiles_template](https://github.com/anishathalye/dotfiles_template).


### Configurations

- [bin](bin): swiss army knife of custom, useful shell scripts
- [sh](sh): generic shell configuration
- [tmux](tmux): tmux configuration using [tpm](https://github.com/tmux-plugins/tpm) and based on [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible) and [spicycode](https://github.com/spicycode)'s [gist](https://gist.github.com/spicycode/1229612)
- [vim](vim): vim configuration using [vim-plug](https://github.com/junegunn/vim-plug) and based on [vim-sensible](https://github.com/tpope/vim-sensible)
- [zsh](zsh): zsh configuration using [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)


### Prerequisites

- git
- vim
- zsh
- oh-my-zsh
- tmux


### Installation

1. If you have your own dotfiles or bin folder, then back them up to a new location.

1. Use git to clone this project:
   ```shell
   git clone git@github.com:djmccormick/dotfiles.git
   ```

1. Run the install script:
   ```shell
   dotfiles/install
   ```


### Additional setup

If you have [The Silver Searcher](https://github.com/ggreer/the_silver_searcher) (also known as `ag`) installed, it'll be used by [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim) and [ack.vim](https://github.com/mileszs/ack.vim) for searches. It makes both work faster, so I recommend it.
