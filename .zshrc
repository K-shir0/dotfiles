# Basics
export LANG='ja_JP.UTF-8'
export TZ='Asia/Tokyo'


# history
HISTFILE=$HOME/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
HISTORY_IGNORE='(ls|pwd|exit)'


# alias
alias vim='nvim'


# peco
function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection


# Application
## Dart
export PATH="$PATH":"$HOME/.pub-cache/bin"
