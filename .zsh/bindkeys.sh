bindkey -e

bindkey '\e[1;5C' forward-word            # ctrl-right
bindkey '\e[1;5D' backward-word           # ctrl-left
bindkey '\e[2~'   overwrite-mode          # insert
bindkey '\e[3~'   delete-char             # delete
bindkey "^[[A"    up-line-or-search       # up
bindkey "^[[B"    down-line-or-search     # down
bindkey '\e[5~'   history-search-backward # page up
bindkey '\e[6~'   history-search-forward  # page down
bindkey '\e[1~'   beginning-of-line       # home
bindkey '\e[4~'   end-of-line             # end
bindkey " "        magic-space            # do history expansion on space
