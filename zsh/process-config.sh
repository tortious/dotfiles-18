#!/usr/bin/env sh

echo "Bundling all plugins"
antibody bundle < ~/.zsh_plugins.txt > ~/.zsh_plugins.sh

echo "Creating bookmarks file"
echo '# This script was autogenerated' > ~/.bookmarks.zsh
while read LINE; do
    # Remove all comments from line
    LINE=$(echo "$LINE" | sed -e 's/#.*//g')
    # If there is anything in the line
    if [[ -n "$LINE" ]]; then
        name=$(echo "$LINE" | awk '{print $1}')
        path=$(echo "$LINE" | awk '{print $2}' | sed -e 's/~/$HOME/')
        echo "export ${name}=\"${path}\"" >> ~/.bookmarks.zsh
    fi
done < ~/.bookmarks

echo "Creating aliases file"
echo '# This script was autogenerated' > ~/.aliases.zsh
while read LINE; do
    # Remove all comments from line
    LINE=$(echo "$LINE" | sed -e 's/#.*//g')
    # If there is anything in the line
    if [[ -n "$LINE" ]]; then
        name=$(echo "$LINE" | awk '{print $1}')
        command=$(echo "$LINE" | awk '{$1 = ""; print $0}' | sed -e 's/^\s//')
        echo "alias '${name}'='${command}'" >> ~/.aliases.zsh
    fi
done < ~/.aliases