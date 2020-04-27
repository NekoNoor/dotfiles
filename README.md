# dotfiles

Collection of my dotfiles

### to use:

- place `config.fish` in `~/.config/fish/`
- install `vim-plug` from https://github.com/junegunn/vim-plug
- place `init.vim` in `~/.config/nvim/`
- place `stdheader.vim` in `~/.config/nvim/`
- place `unicorn.cow` in `/usr/share/cows/`
- set $HEADER_USER in your .bashrc or .zshrc to your intra login name (example: `export HEADER_USER=nschat`)

### notes:

- these dotfiles are meant to be used on linux
- `stdheader.vim` is slightly modified, it reads your username from `$HEADER_USER` instead of `$USER` so the username in the header can be set correctly
- `init.vim` should also work with regular vim with some slight modifications of the paths if you rename it to `.vimrc` and place it in your home folder
- the `gitdiff` alias is useful to use in your git commit editor like this: `git config --global core.editor "nvim -c 'vsplit term://gitdiff | wincmd h'"`
