## Installation

0. Install from Brew

    `brew update`

    New install
    `brew install vim --with-lua`

    or upgrade
    `brew upgrade vim`

1. Install `ag` itself first:

   https://github.com/rking/ag.vim#installation

2. Install `eslint`:

   `npm install -g eslint`

3. Put thise line in `.bashrc` to make FZF use ag instead:

   `export FZF_DEFAULT_COMMAND='ag -l -g ""'`

   or Git

    `
    export FZF_DEFAULT_COMMAND='
    (git ls-tree -r --name-only HEAD ||
    find . -path "*/\.*" -prune -o -type f -print -o -type l -print |
        sed s/^..//) 2> /dev/null'
    `

## Bonus:

1. Add support to alt + arrow keys in order to jump to previous next word

    - On iTerm2, go to:
    Preferences > Profiles > Keys > Load Preset... > Natural Text Editing

2. Add powerline font symbols support

    - Clone this repository: https://github.com/powerline/fonts
    And execute ./install.sh

    - On iTerm2, go to:
    Preferences > Profiles > Text > Non-ASCII Font > Change Font > Source Code Pro For Powerline

