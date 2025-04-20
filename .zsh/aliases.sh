alias c='clear'
alias f='fg'
alias b='bg'

alias mv='mv -i'
alias cp='cp -iR'
alias rm='rm -i'

alias ls='ls -F --color=auto'
alias la='ls -Fa --color=auto'
alias ll='ls -FlhX --color=auto'
alias lla='ls -FlahX --color=auto'

alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

alias hgrep='history 0 | grep --color=auto'

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

alias diff='diff --color=always'

alias backup='rsync -auvz'

alias vi='vim'

alias gita='git add'
alias gitaa='git add --all'
alias gigb='git branch'
alias gitc='git commit -m'
alias gith='git checkout'
alias githb='git checkout -b'
alias gitC='git clone'
alias gitd='git diff'
alias gitds='git diff --stat --summary'
alias gitdc='git diff --cached'
alias gitdcs='git diff --cached --stat --summary'
alias gitf='git fetch'
alias gitl='git log'
alias gitlo='git log --oneline'
alias gitls='git log --stat'
alias gitlg='git log --graph'
alias gitlos='git log --oneline --stat'
alias gitlog='git log --oneline --graph'
alias gitlsg='git log --stat --graph'
alias gitlosg='git log --oneline --stat --graph'
alias gitm='git merge'
alias gitp='git push'
alias gitpt='git push --tags'
alias gitpu='git push -u'
alias gitpuom='git push -u origin master'
alias gitP='git pull'
alias gitr='git remote'
alias gitra='git remote add'
alias gitR='git reset'
alias gitRh='git reset --hard'
alias gits='git status -sM'
alias gitsb='git status -sbM'
alias gitH='git show'
alias gitt='git tag'
alias gitv='git revert'

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

alias dosbox=dosbox -conf "$XDG_CONFIG_HOME"/dosbox/dosbox.conf
alias mocp=mocp -M "$XDG_CONFIG_HOME"/moc
alias netbeans=netbeans --userdir "$XDG_CONFIG_HOME"/netbeans
alias pidgin=pidgin --config="$XDG_DATA_HOME"/purple
alias svn=svn --config-dir "$XDG_CONFIG_HOME"/subversion
alias wget=wget --hsts-file="$XDG_DATA_HOME"/wget-hsts
alias nvidia-settings=nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings
