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

export LESS='-R'
export EDITOR=vim
export VISUAL=nvim
export PAGER=less
export TERMINAL=kitty
export BROWSER='flatpak run org.mozilla.firefox'
export BLOCKSIZE=Mb
export LESSCHARSET=UTF-8
