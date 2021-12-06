if [ -d "$HOME/.local/bin" ]
then PATH="$HOME/.local/bin:$PATH"
fi

export XDG_CONFIG_HOME="$HOME/.config"
export COLOR=#7d80b8
export DISPLAY=:0

xinit bspwm -- vt7 &>/dev/null &
