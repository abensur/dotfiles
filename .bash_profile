# Increase ulimit
ulimit -n 2048

for file in ~/.{bash_colors,bash_prompt,exports,aliases,functions,extras}; do
	[ -r "$file" ] && source "$file"
done

unset file

# init brew
PATH="/usr/local/opt/coreutils/libexec/gnubin:$PATH"
PATH="$PATH:./node_modules/.bin"

##
# Homebrew bash completion
##
if [ -f $(brew --prefix)/etc/bash_completion ]; then
	source $(brew --prefix)/etc/bash_completion
fi
