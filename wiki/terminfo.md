Make sure `echo $TERM` outputs `alacritty` and `tmux-256color` depending on if
in tmux or not. If they don't you probably need to install their terminfo
files, see below.

The terminfo files seem to be installed in `~/.terminfo/`

The solution provided by bbqtd worked perfectly file. Below is the summary:

```
$ brew install ncurses
$ /usr/local/opt/ncurses/bin/infocmp tmux-256color > ~/tmux-256color.info
$ tic -xe tmux-256color tmux-256color.info
# This creates a complied entry in ~/.terminfo
$ infocmp tmux-256color | head
#       Reconstructed via infocmp from file: /Users/libin/.terminfo/74/tmux-256color
tmux-256color|tmux with 256 colors,
```

More complex than above steps: https://gist.github.com/bbqtd/a4ac060d6f6b9ea6fe3aabe735aa9d95

Alacritty info file is in the repo: https://github.com/alacritty/alacritty/blob/master/extra/alacritty.info

The correct terminal type for Alacritty is, as the comment even says, alacritty.

What the comment is telling you is that, if you don't explicitly specify the terminal type, Alacritty goes and looks to see whether your terminfo database has an alacritty entry, sets the terminal type to alacritty if so, and uses a bad fallback if it doesn't have such an entry.

xterm-anything is the wrong terminal type to set unless your terminal emulator is actually the XTerm program.

The right thing to do is to put an alacritty entry in your terminfo database if it is missing. terminfo both allows entries to be exported from and imported to machines, and allows people to locally add terminal capabilities records in their home directories.

It shouldn't be missing. Dickey terminfo has had an alacritty entry since 2018, and the Alacritty developers themselves have supplied a terminfo entry that one can add to one's database since 2017.
Further reading

    https://unix.stackexchange.com/a/515517/5132
    https://unix.stackexchange.com/a/560992/5132

