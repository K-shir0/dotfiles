# Basics
export LANG='ja_JP.UTF-8'
export TZ='Asia/Tokyo'

# Complement
autoload -Uz compinit
compinit


# history
## Don't show duplicate commands
setopt histignorealldups

HISTFILE=$HOME/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
HISTORY_IGNORE='(ls|pwd|exit)'


# Aliases
## ls
alias ll='ls -al'
## grep
alias grep='grep --color=auto'
## vim
alias vi='vim'
alias vim='nvim'
# fvm
alias f='fvm flutter'
alias d='fvm dart'


# peco
function peco-history-selection() {
    BUFFER=`history -n 1 | tail -r  | awk '!a[$0]++' | peco`
    CURSOR=$#BUFFER
    zle reset-prompt
}

zle -N peco-history-selection
bindkey '^R' peco-history-selection


# zplug
source ~/.zplug/init.zsh
## theme
## other
zplug "zsh-users/zsh-completions"

zplug load


# Application
## Java
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_241.jdk/Contents/Home
## Dart
export PATH="$PATH":"$HOME/.pub-cache/bin"
## fvm
export PATH="$PATH":"$HOME/fvm/default/bin"


# Prompt
PROMPT="%F{172}🍊 %c %# %f"
