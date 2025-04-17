function () {
	local parse_git_branch() {
		local SEP='╲'
		local branch=`git branch 2>/dev/null | sed '/^\*/!d;s/\* //'`

		if [ -z $branch ]
		then echo ''
		else
			local stat=`git status -s | wc -l`

			if [[ $stat == 0 ]]
			then echo "$SEP $branch "
			else echo "$SEP $branch +$stat "
			fi
		fi
	}

	local LF=$'\n\n'
	local CMDCOLOR=${CMDCOLOR:-black}
	local TL_CORNER=$'%B%F{$CMDCOLOR}╭─%b\uE0BE'
	local BL_CORNER=$'%B%F{$CMDCOLOR}╰╢%b%f'
	local BR_CORNER=$'%F{$CMDCOLOR}'
	local BAR_BEGIN=$'%B%F{white}%K{$CMDCOLOR}'
	local BAR_END=$'%b%F{$CMDCOLOR}%k\uE0B8'
	local ID=$'%n@%m'
	local GIT=$'`parse_git_branch`'
	local JOBS=$'%B%1(j.¤ .)%b'
	local DT=$'%B%D{%c}%b'
	local DIR=$'%B%F{$CMDCOLOR}%~%b%f'
	local STATUS=$'%(?..%F{red}%?%B%F{$CMDCOLOR}%k ╟─)'

	export PS1="%b%f%k${TL_CORNER}${BAR_BEGIN} ${ID} ${GIT}${BAR_END} ${JOBS}${DT}%0${LF}${BL_CORNER}${DIR} "
	export PS2="%B%F{$CMDCOLOR}%k> %f%b"
	export PS3="%B%F{$CMDCOLOR}%k?# %f%b"
	export PS4="%B%F{$CMDCOLOR}%k+%N:%i> %f%b"
	export RPS1="$STATUS"
}
