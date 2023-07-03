# dotfiles

My personal *nix configuration files using [dotbot](https://github.com/anishathalye/dotbot) and based on [dotfiles_template](https://github.com/anishathalye/dotfiles_template).


### Configurations

- [bin](bin): swiss army knife of custom, useful shell scripts
- [sh](sh): generic shell configuration
- [tmux](tmux): tmux configuration using [tpm](https://github.com/tmux-plugins/tpm) and based on [tmux-sensible](https://github.com/tmux-plugins/tmux-sensible) and [spicycode](https://github.com/spicycode)'s [gist](https://gist.github.com/spicycode/1229612)
- [nvim](nvim): neovim configuration using [nvchad](https://github.com/NvChad/NvChad)
- [zsh](zsh): zsh configuration using [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh)


### Prerequisites

- git
- neovim
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
