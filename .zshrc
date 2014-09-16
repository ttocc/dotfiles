# Created by newuser for 5.0.5

autoload -U compinit
compinit
export LANG=ja_JP.UTF-8

HISTFILE=~/.zsh_history
HISTSIZE=50000
SAVEHIST=50000
setopt hist_ignore_dups     # ignore duplication command history list
setopt share_history        # share command history data
autoload history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^P" history-beginning-search-backward-end
bindkey "^N" history-beginning-search-forward-end

PROMPT="%n@%m:%/ %% "
PROMPT2="%_ %% "
SPROMPT="%r is correct? [n,y,a,e]: "

### Aliases ###
alias vi='vim'
alias h='history'
alias j='jobs -l'
alias la='ls -waF'
alias lf='ls -wFA'
alias ll='ls -wlAF'
alias less='lv'
alias view='vim -R'
alias jman='env LC_CTYPE=ja_JP.UTF-8 jman'
#alias man='env LC_CTYPE=ja_JP.UTF-8 jman'
alias tmux='tmux -2'

