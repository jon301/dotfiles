# Git (script should have 755 permissions)
source ~/.bash/plugins/git/.git-completion.bash
source ~/.bash/plugins/git/.git-prompt.sh

# Tmuxinator
source ~/.bash/plugins/tmuxinator/.tmuxinator.bash

# fzf
[ -f ~/.fzf.bash  ] && source ~/.fzf.bash
source ~/.bash/plugins/fzf/functions.sh
source ~/.bash/plugins/fzf/key-binding.bash

export FZF_DEFAULT_COMMAND='ag -g ""'
# export FZF_DEFAULT_COMMAND=' (git ls-tree -r --name-only HEAD || find . -path "*/\.*" -prune -o -type f -print -o -type l -print | sed s/^..//) 2> /dev/null'
