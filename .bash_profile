source ~/.bash/exports.bash
source ~/.bash/prompt.bash
source ~/.bash/aliases.bash
source ~/.bash/plugins.bash

# put your private tokens in a private separate file
[ -f ~/.bash/private.bash  ] && source ~/.bash/private.bash

export NVM_DIR="/Users/jonjon/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
