autoload -Uz compinit
compinit

parse_git_branch() {
	local branch=`git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'`

	if [ -z $branch ]
	then echo ''
	else
		local stat=`git status -s | wc -l`

		if [[ $stat == 0 ]]
		then echo "╲ $branch "
		else echo "╲ $branch ±$stat "
		fi
	fi
}

setopt auto_param_slash
setopt hist_ignore_dups
setopt hist_ignore_space
setopt emacs
setopt prompt_subst
setopt always_to_end
setopt list_packed
setopt list_types
setopt append_history
setopt extended_history

unsetopt menu_complete
unsetopt share_history
unsetopt correct
unsetopt correct_all
unsetopt always_last_prompt
unsetopt auto_menu

HISTFILE=~/.zsh_history
HISTSIZE=5000
SAVEHIST=5000

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

bindkey -e
bindkey '\e[1;5C' forward-word            # ctrl-right
bindkey '\e[1;5D' backward-word           # ctrl-left
bindkey '\e[2~'   overwrite-mode          # insert
bindkey '\e[3~'   delete-char             # delete
bindkey '\e[5~'   history-search-backward # page up
bindkey '\e[6~'   history-search-forward  # page down
bindkey '\e[1~'   beginning-of-line       # home
bindkey '\e[4~'   end-of-line             # end

export EDITOR=vim
export PAGER=less
export PATH=$HOME/.local/bin:$HOME/bin:/usr/local/bin:$PATH
export LANG=ru_RU.UTF-8
export BLOCKSIZE=Mb
export LESSCHARSET=UTF-8

alias c='clear'
alias f='fg'
alias b='bg'

alias vi='vim'

alias ls='ls -F --color=auto'
alias la='ls -Fa --color=auto'
alias ll='ls -FlhX --color=auto'
alias lla='ls -FlahX --color=auto'

alias lns='ln -s'

alias grep='grep --color=auto'
alias egr='egrep --color=auto'
alias fgr='fgrep --color=auto'

alias df='df -Th --total'
alias dfa='df -Th --total'
alias du='du -ach -d1 | sort -h'

alias fnn='find . -name'
alias fnf='find . -type f'
alias fnd='find . -type d'
alias fnp='find . -perm'
alias fnu='find . -user'
alias fng='find . -group'
alias fna='find . -atime'
alias fnm='find . -mtime'
alias fnc='find . -cmin'
alias fns='find . -size'
alias fnfe='find . -type f -empty'
alias fnde='find . -type d -empty'

alias free='free -ht'

alias diff='diff --color=always'

alias histg='history 0 | grep'

alias ps='ps u'
alias psa='ps au'
alias psx='ps ux'
alias psax='ps aux'
alias psg='ps aux | grep'

alias backup='rsync -auvz'

alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gc='git commit -m'
alias gch='git checkout'
alias gchb='git checkout -b'
alias gC='git clone'
alias gd='git diff'
alias gds='git diff --stat --summary'
alias gdc='git diff --cached'
alias gdcs='git diff --cached --stat --summary'
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
alias gss='git status -sM'
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

export COLOR=${COLOR:-black}

export PS1="%B%F{\$COLOR}%k╭─%F{\$COLOR}%b◥%B%F{white}%K{\$COLOR} %n@%m \`parse_git_branch\`%F{\$COLOR}%k%b◣%B %1(j.¤ .)%D{%c} %0(?..%F{red}[%?])
%F{\$COLOR}╰╢%~%f%b "
export PS2="%B%F{\$COLOR}%k> %f%b"
export PS3="%B%F{\$COLOR}%k?# %f%b"
export PS4="%B%F{\$COLOR}%k+%N:%i> %f%b"

. ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=('rm -r*' 'fg=white,bold,bg=red')

eval "$(dircolors -b)"
