function() {
	bindkey -e

	declare -A key
	key[Left]="${terminfo[kcub1]}"
	key[Up]="${terminfo[kcuu1]}"
	key[Down]="${terminfo[kcud1]}"
	key[Right]="${terminfo[kcuf1]}"
	key[Home]="${terminfo[khome]}"
	key[End]="${terminfo[kend]}"
	key[PageUp]="${terminfo[kpp]}"
	key[PageDown]="${terminfo[knp]}"
	key[Insert]="${terminfo[kich1]}"
	key[Delete]="${terminfo[kdch1]}"
	key[Backspace]="${terminfo[kbs]}"
	key[Shift-Tab]="${terminfo[kcbt]}"
	key[Ctrl-Left]="${terminfo[kLFT5]}"
	key[Ctrl-Right]="${terminfo[kRIT5]}"
	key[Ctrl-Delete]="${terminfo[kDC5]}"
	key[Ctrl-Backspace]="${terminfo[cub1]}"
	key[Alt-Left]="${terminfo[kLFT3]}"
	key[Alt-Right]="${terminfo[kRIT3]}"
	key[Alt-Up]="${terminfo[kUP3]}"
	key[Alt-Down]="${terminfo[kDN3]}"
	key[Alt-Home]="${terminfo[kHOM3]}"

	back-dir() {
		popd
		zle reset-prompt
		print
		ls
		zle reset-prompt
	}

	forward-dir() {
		zle reset-prompt
		print
		ls
		zle reset-prompt
	}

	parent-dir() {
		pushd ..
		zle reset-prompt
		print
		ls
		zle reset-prompt
	}

	home-dir() {
		pushd ~
		zle reset-prompt
		print
		ls
		zle reset-prompt
	}

	zle -N back-dir
	zle -N forward-dir
	zle -N parent-dir
	zle -N home-dir

	bindkey " " magic-space  # do history expansion on space

	[[ -n "${key[Left]}"           ]] && bindkey -- "${key[Left]}"            backward-char
	[[ -n "${key[Right]}"          ]] && bindkey -- "${key[Right]}"           forward-char
	[[ -n "${key[Up]}"             ]] && bindkey -- "${key[Up]}"              up-line-or-beginning-search
	[[ -n "${key[Down]}"           ]] && bindkey -- "${key[Down]}"            down-line-or-beginning-search
	[[ -n "${key[Home]}"           ]] && bindkey -- "${key[Home]}"            beginning-of-line
	[[ -n "${key[End]}"            ]] && bindkey -- "${key[End]}"             end-of-line
	[[ -n "${key[PageUp]}"         ]] && bindkey -- "${key[PageUp]}"          beginning-of-buffer-or-history
	[[ -n "${key[PageDown]}"       ]] && bindkey -- "${key[PageDown]}"        end-of-buffer-or-history
	[[ -n "${key[Insert]}"         ]] && bindkey -- "${key[Insert]}"          overwrite-mode
	[[ -n "${key[Delete]}"         ]] && bindkey -- "${key[Delete]}"          delete-char
	[[ -n "${key[Backspace]}"      ]] && bindkey -- "${key[Backspace]}"       backward-delete-char
	[[ -n "${key[Shift-Tab]}"      ]] && bindkey -- "${key[Shift-Tab]}"       reverse-menu-complete
	[[ -n "${key[Ctrl-Left]}"      ]] && bindkey -- "${key[Ctrl-Left]}"       backward-word
	[[ -n "${key[Ctrl-Right]}"     ]] && bindkey -- "${key[Ctrl-Right]}"      forward-word
	[[ -n "${key[Ctrl-Delete]}"    ]] && bindkey -- "${key[Ctrl-Delete]}"     kill-word
	[[ -n "${key[Ctrl-Backspace]}" ]] && bindkey -- "${key[Ctrl-Backspace]}"  backward-kill-word
	[[ -n "${key[Alt-Left]}"       ]] && bindkey -- "${key[Alt-Left]}"        back-dir
	[[ -n "${key[Alt-Right]}"      ]] && bindkey -- "${key[Alt-Right]}"       forward-dir
	[[ -n "${key[Alt-Up]}"         ]] && bindkey -- "${key[Alt-Up]}"          parent-dir
	[[ -n "${key[Alt-Home]}"       ]] && bindkey -- "${key[Alt-Home]}"        home-dir

	if (( ${+terminfo[smkx]} && ${+terminfo[rmkx]} )); then
		autoload -Uz add-zle-hook-widget
		function zle_application_mode_start { echoti smkx }
		function zle_application_mode_stop { echoti rmkx }
		add-zle-hook-widget -Uz zle-line-init zle_application_mode_start
		add-zle-hook-widget -Uz zle-line-finish zle_application_mode_stop
	fi
}
