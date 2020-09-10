# Machine setup

Setup in a fresh environment

## Programs to install

Before cloning and using this repo, install:

brew/git/lsdeluxe/alacritty/tmux/starship/lazygit/delta

fonts - as below

```
brew tap homebrew/cask-fonts
brew cask install font-open-sans // Sans-serif
brew cask install font-roboto-slab // Serif
brew cask install font-fira-code-nerd-font // Monospace/code editors/terminals etc
```

vim/vimx - vimx comes with clipboard support in Linuxes

zsh - Change default shell to zsh. Oh My Zsh GitHub wiki has instructions.

ohmyzsh - If installing *after* setting up this repo: use `KEEP_ZSHRC=yes` to keep this repos `.zshrc` file.

Once those are installed clone and setup this repo using `setup.sh`.

docker - Use instructions on website, not package manager.

vscode

### To Investigate

neofetch

polybar

vimdevicons

neovim/the_silver_searcher/deoplete.nvim/neosolarized/mastering-zsh

(lotabout/skim) (junegunn/fzf) (neoclide/coc.nvim) (sindresorhus/trash)

By default, zsh will look in the root of the home directory for the user .z* files, but this behavior can be changed by setting the ZDOTDIR environment variable to another directory (e.g. ~/.zsh/) where you can then group all user zsh configuration in one place.
(maybe machine-setup directory or config one?)

