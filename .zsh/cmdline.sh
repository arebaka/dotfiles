parse_git_branch() {
	local branch=`git branch 2>/dev/null | sed '/^\*/!d;s/\* //'`

	if [ -z $branch ]
	then echo ''
	else
		local stat=`git status -s | wc -l`

		if [[ $stat == 0 ]]
		then echo "╲ $branch "
		else echo "╲ $branch +$stat "
		fi
	fi
}

CMDCOLOR=${CMDCOLOR:-black}

export PS1=$'%B%F{\$CMDCOLOR}%k╭─%F{\$CMDCOLOR}%b\uE0BE%B%F{white}%K{\$CMDCOLOR} %n@%m \`parse_git_branch\`%F{\$CMDCOLOR}%k%b\uE0B8%B %1(j.¤ .)%D{%c} %0(?..%F{red}[%?])
%F{\$CMDCOLOR}╰╢%~%f%b '
export PS2="%B%F{\$CMDCOLOR}%k> %f%b"
export PS3="%B%F{\$CMDCOLOR}%k?# %f%b"
export PS4="%B%F{\$CMDCOLOR}%k+%N:%i> %f%b"
