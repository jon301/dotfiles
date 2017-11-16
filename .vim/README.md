## Installation

0. Install from Brew

    `brew update`

    New install
    `brew install vim --with-lua --with-gettext`

    or upgrade
    `brew upgrade vim`

1. Install `ag` itself first:

   https://github.com/rking/ag.vim#installation
   `brew install the_silver_searcher`

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

4. Install PlantUML

    Install Java Platform JDK
    http://www.oracle.com/technetwork/java/javase/downloads/index.html

5. Install reattach-to-user-namespace

    `brew install reattach-to-user-namespace`

6. Create vim directories

    `cd ~/.vim; mkdir swap backup undofiles`

## Bonus:

1. Add support to alt + arrow keys in order to jump to previous next word

    - On iTerm2, go to:
    Preferences > Profiles > Keys > Load Preset... > Natural Text Editing

2. Add powerline font symbols support

    - Clone this repository: https://github.com/powerline/fonts
    And execute ./install.sh

    - On iTerm2, go to:
    Preferences > Profiles > Text > Non-ASCII Font > Change Font > Source Code Pro For Powerline

3. Remap Caps Lock key to Escape in macOS Sierra

    http://www.jeffgeerling.com/blog/2016/remapping-caps-lock-key-escape-macos-sierra

    - Open System Preferences and click on 'Keyboard'
    - Click on 'Modifier Keys...'
    - For 'Caps Lock (⇪) Key', choose '⎋ Escape'
    - Click 'OK'

4. Switch between Java version

Run `javac -version` to see which version is being exported. For instance, this will return:

```
$ javac -version
javac 9.0.1
```

Use this command to check currently installed versions:

`$ /usr/libexec/java_home -V`

It will show you something like:

```
$ /usr/libexec/java_home -V
Matching Java Virtual Machines (2):
    9.0.1, x86_64:	"Java SE 9.0.1"	/Library/Java/JavaVirtualMachines/jdk-9.0.1.jdk/Contents/Home
    1.8.0_131, x86_64:	"Java SE 8"	/Library/Java/JavaVirtualMachines/jdk1.8.0_131.jdk/Contents/Home
```

If you have multiple versions you can select the desired $JAVA_HOME export like so:

`export JAVA_HOME=$(/usr/libexec/java_home -v 1.8)`

(if you have multiple versions of 1.8 for instance you should specify the entire version number: 1.8.0_131. If it's unique, 1.8 will do.)

Add that export to `~/.bash_profile` to make it default and restart the terminal.

Output of javac -version is now:

```
$ javac -version
javac 1.8.0_131
```
