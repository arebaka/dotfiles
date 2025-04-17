append_path () {
    case ":$PATH:" in
        *:"$1":*)
            ;;
        *)
            PATH="${PATH:+$PATH:}$1"
    esac
}

append_path "$HOME/.local/bin"
append_path "$HOME/go/bin"
append_path "$HOME/.local/share/gem/ruby/3.3.0/bin"

export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_STATE_HOME="$HOME/.local/state"
export XDG_CACHE_HOME="$HOME/.cache"

export LESS='-R'
export EDITOR=vim
export VISUAL=nvim
export PAGER=less
export TERMINAL=kitty
export BROWSER='flatpak run org.mozilla.firefox'
export BLOCKSIZE=Mb
export LESSCHARSET=UTF-8

export CALCHISTFILE="$XDG_CACHE_HOME"/calc_history
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export CONAN_USER_HOME="$XDG_CONFIG_HOME"
export CUDA_CACHE_PATH="$XDG_CACHE_HOME"/nv
export DOCKER_CONFIG="$HOME"/.docker
export ELINKS_CONFDIR="$XDG_CONFIG_HOME"/elinks
export GEM_HOME="$XDG_DATA_HOME"/gem
export GEM_SPEC_CACHE="$XDG_CACHE_HOME"/gem
export GRADLE_USER_HOME="$XDG_DATA_HOME"/gradle
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export XCURSOR_PATH=/usr/share/icons:$HOME/.icons
export IPYTHONDIR="$XDG_CONFIG_HOME"/ipython
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME"/jupyter
export KDEHOME="$XDG_CONFIG_HOME"/kde
export LESSHISTFILE="$XDG_STATE_HOME"/less/history
export ICEAUTHORITY="$XDG_CACHE_HOME"/ICEauthority
export XCOMPOSECACHE="$XDG_CACHE_HOME"/X11/xcompose
export MPLAYER_HOME="$XDG_CONFIG_HOME"/mplayer
export NODE_REPL_HISTORY="$XDG_DATA_HOME"/node_repl_history
export NUGET_PACKAGES="$XDG_CACHE_HOME"/NuGetPackages
export PSQL_HISTORY="$XDG_DATA_HOME"/psql_history
export PYLINTHOME="$XDG_CACHE_HOME"/pylint
export PYTHONSTARTUP="$HOME"/python/pythonrc
export KERAS_HOME="${XDG_STATE_HOME}"/keras
export RENPY_PATH_TO_SAVES="$XDG_DATA_HOME"/renpy
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export SQLITE_HISTORY="$XDG_CACHE_HOME"/sqlite_history
export W3M_DIR="$XDG_DATA_HOME"/w3m

export BUNDLE_USER_CONFIG="$XDG_CONFIG_HOME"/bundle
export BUNDLE_USER_CACHE="$XDG_CACHE_HOME"/bundle
export BUNDLE_USER_PLUGIN="$XDG_DATA_HOME"/bundle

export ANDROID_USER_HOME="$HOME"/.android
export ANDROID_HOME="$HOME"/.android/sdk

