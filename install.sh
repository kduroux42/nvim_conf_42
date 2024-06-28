#!/bin/bash

cd "$HOME" || exit

mkdir .fonts

mkdir temp__nvim

cd temp__nvim || exit

rm -rf nvim

# download github
git clone https://github.com/kduroux42/nvim_conf_42.git nvim

cd nvim || exit

# install nerd fonts
cp -r FiraCode "$HOME/.fonts/"

fc-cache -v

# extract appimage
chmod u+x nvim.appimage && ./nvim.appimage --appimage-extract

cp -r squashfs-root "$HOME"

rm -rf squashfs-root nvim.appimage

cd ../ || exit

cp -r nvim "$HOME/.config/"

cd "$HOME" || exit
rm -rf temp__nvim

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
