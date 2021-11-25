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
setopt hist_ignore_space
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

export EDITOR=vi
export PAGER=less
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export LANG=ru_RU.UTF-8
export BLOCKSIZE=Mb
export LESSCHARSET=UTF-8

eval "$(dircolors -b)"

alias c='clear'

alias ls='ls -F --color=auto'
alias la='ls -Fa --color=auto'
alias ll='ls -FlhX --color=auto'
alias lla='ls -FlahX --color=auto'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias df='df -Th --total'
alias dfa='df -Th --total'
alias du='du -ach -d1 | sort -h'


alias findn='find . -name'
alias findf='find . -type f'
alias findd='find . -type d'
alias findp='find . -perm'
alias findu='find . -user'
alias findg='find . -group'
alias finda='find . -atime'
alias findm='find . -mtime'
alias findc='find . -cmin'
alias finds='find . -size'
alias findfe='find . -type f -empty'
alias findde='find . -type d -empty'

alias free='free -ht'

alias histg='history|grep'

alias ps='ps u'
alias psa='ps au'
alias psx='ps ux'
alias psax='ps '
alias psg='ps aux | grep'

alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -m'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gC='git clone'
alias gd='git diff --color | less -R'
alias gdc='git diff --color --cached | less -R'
alias gf='git fetch'
alias gl='git log --color | less -R'
alias glo='git log --color --oneline | less -R'
alias gls='git log --color --stat | less -R'
alias glg='git log --color --graph | less -R'
alias glos='git log --color --oneline --stat | less -R'
alias glog='git log --color --oneline --graph | less -R'
alias glsg='git log --color --stat --graph | less -R'
alias glosg='git log --color --oneline --stat --graph | less -R'
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
alias gss='git status -M'
alias gssb='git status -sbM'
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
