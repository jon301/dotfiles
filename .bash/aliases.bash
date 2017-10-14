# Aliases
####################################

# show hidden files
alias ll="ls -al"
# make ls display in columns and with a file type indicator (end directories with "/", etc) by default
alias ls="ls -CF"
# make an alias to pipe our output to less for viewing large directory listings with the long format
alias lsl="ls -lhFA | less"
# cut out the cd part entirely by making an alias for ..
alias ..="cd .."
alias ....="cd ../.."
alias ......="cd ../../.."
# find files in our current directory easily
alias fhere="find . -name "
# make our process table searchable
alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
