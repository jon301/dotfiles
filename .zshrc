source ~/dotfiles/zsh/options.zsh
source ~/dotfiles/zsh/prompt.zsh
source ~/dotfiles/zsh/bind.zsh
source ~/dotfiles/zsh/exports.sh
source ~/dotfiles/zsh/aliases.sh
source ~/dotfiles/zsh/plugins.sh

# put your private tokens in a private separate file
[ -f ~/dotfiles/shell/private.sh ] && source ~/dotfiles/shell/private.sh


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# pnpm
export PNPM_HOME="/Users/trangjon/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end