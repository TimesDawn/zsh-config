# .config/zsh/fzf.zsh

if command -v fd >/dev/null 2>&1; then
	export FZF_DEFAULT_COMMAND='fd --type f --hidden --strip-cwd-prefix' # for Arch
elif command -v fdfind >dev/null 2>&1; then
	export FZF_DEFAULT_COMMAND='fdfind --type f --hidden --strip-cwd-prefix' # for Ubuntu
fi

# Compact UI
export FZF_DEFAULT_OPTS='--height 40% --layout=reverse --border'
