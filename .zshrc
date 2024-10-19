alias icat='kitten icat'
alias vim='nvim'
alias ls='eza --icons'
eval "$(starship init zsh)"
export GPG_TTY=$(tty)
function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")"
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
export HYPRSHOT_DIR=/home/sparrow/Pictures/
eval "$(zoxide init zsh)"
export EDITOR=nvim
