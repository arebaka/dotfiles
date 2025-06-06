autoload -Uz compinit up-line-or-beginning-search down-line-or-beginning-search
compinit -d "$XDG_CACHE_HOME"/zsh/zcompdump-"$ZSH_VERSION"
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

export HISTFILE="$XDG_CACHE_HOME"/zsh/history
export HISTSIZE=10000
export SAVEHIST=10000

. ~/.zsh/options.sh
. ~/.zsh/bindkeys.sh
. ~/.zsh/aliases.sh
. ~/.zsh/cmdline.sh
#. ~/.zsh/dirstack.sh
. ~/.zsh/style.sh
. ~/.zsh/highlight.sh

. /usr/share/doc/pkgfile/command-not-found.zsh

eval "$(dircolors -b)"
