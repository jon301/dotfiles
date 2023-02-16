bindkey -e

# make C-k delete the rest of the line
bindkey \^K kill-line

# make Escape-Backspace delete a word backward
bindkey "\e^?" backward-kill-word

