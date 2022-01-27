# Git (script should have 755 permissions)
# source ~/dotfiles/shell/plugins/git/.git-completion.bash
source ~/dotfiles/shell/plugins/git/.git-prompt.sh

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='ag -g ""'
# export FZF_DEFAULT_COMMAND=' (git ls-tree -r --name-only HEAD || find . -path "*/\.*" -prune -o -type f -print -o -type l -print | sed s/^..//) 2> /dev/null'
