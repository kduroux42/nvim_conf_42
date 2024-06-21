#!/bin/bash

cd "$HOME" || exit

mkdir temp_____nvim

cd temp_____nvim || exit
rm -rf nvim

# download github
git clone --recursive git@github.com:kduroux42/nvim_conf_42.git

./nvim.appimage --appimage-extract

cp -r squashfs-root "$HOME"

rm -rf squashfs-root nvim.appimage

cp -r nvim "$HOME/.config/"

cd "$HOME" || exit
rm -rf temp_____nvim

RC_FILE="$HOME/.zshrc"

if [ "$(uname)" != "Darwin" ]; then
	RC_FILE="$HOME/.bashrc"
	if [[ -f "$HOME/.zshrc" ]]; then
		RC_FILE="$HOME/.zshrc"
	fi
	if [[ -f "$HOME/.fishrc" ]]; then
		RC_FILE="$HOME/.config/fish/config.fish"
	fi
fi

echo "try to add alias in file: $RC_FILE"

# set up the alias
if ! grep "nvim=" "$RC_FILE" &> /dev/null; then
	echo "nvim alias not present"
	printf "\nalias nvim=\"%s/squashfs-root/AppRun\"\n" "$HOME" >> "$RC_FILE"
fi
