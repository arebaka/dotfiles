autoload -Uz compinit
compinit

local color=yellow
export PS1="%B%F{$color}%K{black}╭─%F{$color}%b◥%B%F{white}%K{$color} %n@%m %F{$color}%K{black}%b◣%B %1(j.⋄ .)%D %* %0(?..%F{red}[%?])
%F{$color}╰╢%~/%k%f%b "
export PS2='> '
export PS3='?# '
export PS4='+%N:%i> '

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

setopt auto_param_slash
setopt hist_ignore_dups
setopt emacs

unsetopt menu_complete
unsetopt share_history
unsetopt correct
unsetopt correct_all

plugins=(git zsh-syntax-highlighting)

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

export EDITOR=vim
export PAGER=less
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export LANG=ru_RU.UTF-8
export BLOCKSIZE=Mb
export LESSCHARSET=UTF-8

eval "$(dircolors -b)"

alias ga='git add'
alias gb='git branch'
alias gc='git commit -m'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gC='git clone'
alias gd='git diff'
alias gdc='git diff --cached'
alias gf='git fetch'
alias gl='git log'
alias glo='git log --oneline'
alias gls='git log --stat'
alias glg='git log --graph'
alias glos='git log --oneline --stat'
alias glog='git log --oneline --graph'
alias glsg='git log --stat --graph'
alias glosg='git log --oneline --stat --graph'
alias gm='git merge'
alias gp='git push'
alias gpt='git push --tags'
alias gpu='git push -u'
alias gpuom='git push -u origin master'
alias gP='git pull'
alias gr='git remote'
alias gra='git remote add'
alias gR='git reset'
alias gRh='git reset --hard'
alias gst='git status'
alias gssb='git status -sb'
alias gsh='git show'
alias gt='git tag'
alias gv='git revert'

alias npmi='npm i'
alias nmpig='npm i -g'
alias npmiD='npm i -D'
alias npmI='npm init'
alias npml='npm list'
alias npmp='npm publish'
alias npmr='npm run'
alias npms='npm start'
alias npmt='npm test'
alias npmu='npm update'
alias npmv='npm -v'
