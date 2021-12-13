# dotfiles

Collection of my dotfiles

### to use:

- place `config.fish` in `~/.config/fish/config.fish`
- install `vim-plug` from https://github.com/junegunn/vim-plug
- place `init.vim` in `~/.config/nvim/init.vim`
- place `stdheader.vim` in `~/.config/nvim/stdheader.vim`
- place `alacritty.yml` in `~/.config/alacritty/alacritty.yml`
- place `tmux.conf` in `~/.tmux.conf`

### notes:

- these dotfiles are meant to be used on macos but should work on linux
- `init.vim` should also work with regular vim with some slight modifications of the paths if you rename it to `.vimrc` and place it in your home folder
- the `gitdiff` alias is useful to use in your git commit editor like this: `git config --global core.editor "nvim -c 'vsplit term://gitdiff | wincmd h'"`
