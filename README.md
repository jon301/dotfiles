# My dotfiles

## Installation steps

- Copy ssh keys to `~/.ssh`
- `chmod 600 id_rsa; chmod 644 id_rsa.pub`
- Install brew: https://brew.sh
- Install python : `brew install python`
- Install git: `brew install git`
- Clone `dotfiles` repo to `~/dotfiles` then create symlinks (`.bash`, `.bash_profile`, `.ctags`, `.tmux.conf`, `.tmuxinator`, `.vim`, `.vimrc`)
- `cd .vim; mkdir swap backup undofiles`
- Install nvm: `https://github.com/creationix/nvm` then install the lateste version of node (see `nvm ls-remote`)
- `nvm` var exports must be in `.bashrc` and not `.bash_profile`
- Install vim: `brew install vim --with-gettext --with-lua`
- Follow vim extra steps: https://github.com/jon301/dotfiles/tree/master/.vim
- Install yarn: `brew install yarn --without-node`
- Install tmux: `brew install tmux`
- Install tmuxinator: `sudo gem install tmuxinator`
- Install tmux plugin manager: `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`

## Tips

1. Don't install node globally

- Prefer using nvm
- brew uninstall node
- rm -rf /usr/local/lib/node_modules

2. mac OS: Stop spaces rearranging automatically

- Launch “System Preferences” from the  Apple menu, and click on Mission Control
- Uncheck the box next to "Automatically rearrange spaces based on most recent use"
