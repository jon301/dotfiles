## Installation

1. Install `ag` itself first:

   https://github.com/rking/ag.vim#installation

2. Install `jshint`:

   `sudo npm install -g jshint`

3. Put thise line in `.bashrc` to make FZF use ag instead:

   `export FZF_DEFAULT_COMMAND='ag -l -g ""'`

4. Bonus:

    On iTerm2, go to:
    Preferences > Profiles > Keys > Load Preset... > Natural Text Editing

    This will add support to alt + arrow keys in order to jump to previous /
    next word

