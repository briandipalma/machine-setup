# Aliases
# -------------------------------------------------

alias l='ls -AFhl'
alias ~='cd ~'
alias c='clear'
alias ..='cd ../'
alias ...='cd ../..'
alias ....='cd ../../..'
alias v=vim
alias cd-='cd -'
alias fhere='find . -name '
alias g="git"

# Set up vim as default editor useful for git commit messages etc.
# --------------------------------------------------

export EDITOR=vim

# npm aliases
# --------------------------------------------------

alias ni='npm install'
alias nis='npm install --save'
alias nid='npm install --save-dev'
alias nig='npm install --global'
alias nt='npm test'
alias nl='npm link'
alias nr='npm run'
alias nf='npm cache clean && rm -rf node_modules && npm install'

# yarn aliases
# --------------------------------------------------

alias y='yarn'
alias ya='yarn add'
alias yt='yarn test'
alias yr='yarn run'
alias ys='yarn start'
alias yul='yarn unlink; yarn link'
alias yl='yarn link'
alias yfi='rm -rf node_modules yarn.lock; yi'

# prompt
# ------------------------------------------------

TIME='\033[01;31m\]\t \033[01;32m\]'
HOST='\033[02;36m\]\h'; HOST=' '$HOST
LOCATION=' \033[00;33m\]\W \[\033[00m\] \n\$ '
PS1=$TIME$USER$HOST$LOCATION

# Machine specific setup
# -----------------------------------------------

if [ -f ~/.bash_setup ]; then
    . ~/.bash_setup
fi

# enable color support if dircolors is present, color option
# fails when dircolors isn't installed e.g MacOSX
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
fi

# Added by nvm

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Added by yarn

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
