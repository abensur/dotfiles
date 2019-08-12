#!/bin/bash
cp settings.json  ~/Library/Application\ Support/Code/User/
cp keybindings.json  ~/Library/Application\ Support/Code/User/

mkdir ~/Library/Application\ Support/Code/User/snippets
cp javascript.json  ~/Library/Application\ Support/Code/User/snippets/
cp vue-html.json  ~/Library/Application\ Support/Code/User/snippets/
cp vue.json  ~/Library/Application\ Support/Code/User/snippets/

cat extensions.list |% { code --install-extension $_}
