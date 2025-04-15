autoload -Uz compinit
compinit

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
HISTSIZE=10000
SAVEHIST=10000

. ~/.zsh/bindkeys.sh
. ~/.zsh/aliases.sh
. ~/.zsh/cmdline.sh

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

. ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_PATTERNS+=('rm -r*' 'fg=white,bold,bg=red')

eval "$(dircolors -b)"

. ~/.zprofile
