# Increase ulimit
ulimit -n 2048

for file in ~/.{bash_colors,bash_prompt,exports,aliases,functions,extras}; do
	[ -r "$file" ] && source "$file"
done

unset file
