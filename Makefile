## Makefile
# _AUTHOR = Breadtard

alacritty:
	cp alacritty-theme.yml ~/.config/alacritty-dracula-theme.yml
	sed -e "s+/home/breadboi/Downloads/alacritty-master/dracula.yml+~/.config/alacritty-dracula-theme/yml+g"
	cp alacritty.yml ~/.config/alacritty.yml
	echo '[i] Done!'

i3:
	cp i3-config ~/.config/i3/config
	echo "[i] Done!"

polybar:
	cp polybar-config ~/.config/polybar/config
	cp polybar.sh ~/.config/polybar/start.sh
	echo "[i] Done!"

zsh:
	pip install powerline-shell
	cp zshrc -i ~/.zshrc
	echo "[i] Done!"

discord:
	cp dracula-BetterDiscord.theme.css ~/.config/BetterDiscord/themes/
	echo "[i] Done!"

emacs:
	cp -r emacs/ ~/.doom.d/
	echo "[i] Done!"

all:
	cp alacritty-theme.yml ~/.config/alacritty-dracula-theme.yml
	sed -e "s+/home/breadboi/Downloads/alacritty-master/dracula.yml+~/.config/alacritty-dracula-theme/yml+g"
	cp alacritty.yml ~/.config/alacritty.yml
	echo "[i] Alacritty done!"
	cp i3-config ~/.config/i3/config
	echo "[i] i3 done!"
	cp polybar-config ~/.config/polybar/config
	cp polybar.sh ~/.config/polybar/start.sh
	echo "[i] Polybar done!"
	pip install powerline-shell
	cp zshrc -i ~/.zshrc
	echo "[i] ZSH done!"
	cp dracula-BetterDiscord.theme.css ~/.config/BetterDiscord/themes/
	echo "[i] BetterDiscord done!"
	cp -r emacs/ ~/.doom.d/
	echo "[i] Doom Emacs done!"
	tput bel
	echo "[i] All done!"
