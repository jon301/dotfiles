export CLICOLOR=1
export EDITOR="vim"
export IGNOREEOF=1
export FZF_DEFAULT_COMMAND=' (git ls-tree -r --name-only HEAD || find . -path "*/\.*" -prune -o -type f -print -o -type l -print | sed s/^..//) 2> /dev/null'

# add more paths separated with :
# export PATH="$PATH"
