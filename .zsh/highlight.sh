. ~/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
. ~/.zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)
ZSH_HIGHLIGHT_MAXLENGTH=512

ZSH_HIGHLIGHT_STYLES[default]=none
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=red
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=yellow
ZSH_HIGHLIGHT_STYLES[alias]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[global-alias]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[builtin]=fg=yellow,underline
ZSH_HIGHLIGHT_STYLES[function]=fg=cyan,underline
ZSH_HIGHLIGHT_STYLES[command]=fg=green
ZSH_HIGHLIGHT_STYLES[precommand]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=blue
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=cyan
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=green,underline
ZSH_HIGHLIGHT_STYLES[path]=underline
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=
ZSH_HIGHLIGHT_STYLES[path_prefix]=underline
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=
ZSH_HIGHLIGHT_STYLES[globbing]=fg=magenta
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[command-substitution]=fg=black,bg=white
ZSH_HIGHLIGHT_STYLES[command-substitution-unquoted]=fg=black,bg=white
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]=fg=black,bg=white
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[process-substitution]=fg=black,bg=white
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[arithmetic-expansion]=fg=black,bg=white
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=black,bg=white
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]=fg=black,bg=white
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=italic
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]=italic
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=italic
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]=italic
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=italic
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]=italic
ZSH_HIGHLIGHT_STYLES[rc-quote]=bold
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=bold
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=bold
ZSH_HIGHLIGHT_STYLES[assign]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[redirection]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[comment]=fg=black,bold
ZSH_HIGHLIGHT_STYLES[named-fd]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[numeric-fd]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[arg0]=fg=green

ZSH_HIGHLIGHT_STYLES[bracket-error]=fg=red,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-1]=fg=blue,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-2]=fg=green,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-3]=fg=magenta,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-4]=fg=yellow,bold
ZSH_HIGHLIGHT_STYLES[bracket-level-5]=fg=cyan,bold
ZSH_HIGHLIGHT_STYLES[cursor-matchingbracket]=standout

ZSH_HIGHLIGHT_PATTERNS+=('rm -r*' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm * -r*' 'fg=white,bold,bg=red')

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE=fg=blue,underline
